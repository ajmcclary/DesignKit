#!/usr/bin/env python3
"""Generate DesignKit's theme pair from the vendored Apple Systems token files.

    --sync --design-system DIR   copy DIR/tokens/semantic.json, DIR/tokens.json,
                                 DIR/tokens/type-scales.json and DIR/platform.css into
                                 Scripts/token-sources/, record DIR's git commit in
                                 SOURCE.md, then regenerate
    --check                      regenerate in memory and fail (exit 1) if the committed
                                 Swift differs
    (no flags)                   regenerate Sources/DesignKitThemes/Themes/Theme+ReadyRoom.swift,
                                 Sources/DesignKitTokens/Size+Layout.swift and
                                 Sources/DesignKitTokens/Tokens+Generated.swift

Exit 2 when a token or alias cannot be resolved. Standard library only.
"""
import argparse
import difflib
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path

SCRIPTS_DIR = Path(__file__).resolve().parent
SOURCES_DIR = SCRIPTS_DIR / "token-sources"
OUTPUT = SCRIPTS_DIR.parent / "Sources" / "DesignKitThemes" / "Themes" / "Theme+ReadyRoom.swift"
LAYOUT_OUTPUT = SCRIPTS_DIR.parent / "Sources" / "DesignKitTokens" / "Size+Layout.swift"
TOKENS_OUTPUT = SCRIPTS_DIR.parent / "Sources" / "DesignKitTokens" / "Tokens+Generated.swift"

# The design system's theme keys are historical: "light" is the DARK base theme,
# "root-light" is the light theme. A value missing from root-light inherits the base.
DARK = "light"
LIGHT = "root-light"
SOURCE_FILES = ("semantic.json", "tokens.json", "type-scales.json", "platform.css")

# Design-system layout token -> Tokens.Size.Layout member. tokens.json carries the
# layout-* family (inside its "spacing" group); platform.css carries the two it had
# no room for (inspector ideal and step). Every row is explicit and reviewable.
LAYOUT_MAP = {
    "layout-window-w": "windowWidth",
    "layout-window-h": "windowHeight",
    "layout-window-min-w": "windowMinWidth",
    "layout-window-min-h": "windowMinHeight",
    "layout-sidebar-min": "sidebarMin",
    "layout-sidebar-ideal": "sidebarIdeal",
    "layout-sidebar-max": "sidebarMax",
    "layout-detail-min": "detailMin",
    "layout-inspector-min": "inspectorMin",
    "layout-inspector-ideal": "inspectorIdeal",
    "layout-inspector-max": "inspectorMax",
    "layout-inspector-step": "inspectorStep",
    "layout-popover-w": "popoverWidth",
    "layout-popover-max-h": "popoverMaxHeight",
    "layout-sheet-w": "sheetWidth",
    "layout-sheet-max-h": "sheetMaxHeight",
}

# Design-system scalar token -> (Swift enum, member, kind). kind: "double" (px or a bare
# number), "int" (a weight) or "stack" (a CSS font list). Constants with no token
# (Tracking.tight, Size.*) stay hand-written in their enums. Every row is reviewable.
SCALAR_MAP = [
    ("Spacing", "xxxs", "sp-xxxs", "double"), ("Spacing", "xxs", "sp-xxs", "double"),
    ("Spacing", "xs", "sp-xs", "double"), ("Spacing", "sm", "sp-sm", "double"),
    ("Spacing", "smMd", "sp-smMd", "double"), ("Spacing", "md", "sp-md", "double"),
    ("Spacing", "lg", "sp-lg", "double"), ("Spacing", "xl", "sp-xl", "double"),
    ("Spacing", "xxl", "sp-xxl", "double"), ("Spacing", "xxxl", "sp-xxxl", "double"),
    ("Spacing", "cardPadding", "sp-card-padding", "double"), ("Spacing", "section", "sp-section", "double"),
    ("Spacing", "content", "sp-content", "double"),
    ("Shape", "radiusXS", "radius-xs", "double"), ("Shape", "radiusSM", "radius-sm", "double"),
    ("Shape", "radiusMD", "radius-md", "double"), ("Shape", "radiusLG", "radius-lg", "double"),
    ("Shape", "radiusXL", "radius-xl", "double"), ("Shape", "radiusXXL", "radius-xxl", "double"),
    ("Shape", "radiusChip", "radius-chip", "double"), ("Shape", "radiusWindow", "radius-window", "double"),
    ("Shape", "radiusFull", "radius-full", "double"),
    ("Shape", "strokeHairline", "stroke-hairline", "double"), ("Shape", "strokeThin", "stroke-thin", "double"),
    ("Shape", "strokeMedLight", "stroke-med-light", "double"), ("Shape", "strokeMedium", "stroke-medium", "double"),
    ("Shape", "strokeThick", "stroke-thick", "double"), ("Shape", "strokeRing", "stroke-ring", "double"),
    ("Typography", "fontSansStack", "type.families.sans", "stack"),
    ("Typography", "fontDisplayStack", "type.families.display", "stack"),
    ("Typography", "fontRoundedStack", "type.families.rounded", "stack"),
    ("Typography", "fontMonoStack", "type.families.mono", "stack"),
    ("Typography.Size", "displayXL", "fs-display-xl", "double"), ("Typography.Size", "displayLG", "fs-display-lg", "double"),
    ("Typography.Size", "displayMD", "fs-display-md", "double"), ("Typography.Size", "displaySM", "fs-display-sm", "double"),
    ("Typography.Size", "titleXL", "fs-title-xl", "double"), ("Typography.Size", "titleLG", "fs-title-lg", "double"),
    ("Typography.Size", "titleMD", "fs-title-md", "double"), ("Typography.Size", "titleSM", "fs-title-sm", "double"),
    ("Typography.Size", "headingLG", "fs-heading-lg", "double"), ("Typography.Size", "headingMD", "fs-heading-md", "double"),
    ("Typography.Size", "bodyLG", "fs-body-lg", "double"), ("Typography.Size", "bodyMD", "fs-body-md", "double"),
    ("Typography.Size", "bodySM", "fs-body-sm", "double"), ("Typography.Size", "captionLG", "fs-caption-lg", "double"),
    ("Typography.Size", "captionMD", "fs-caption-md", "double"), ("Typography.Size", "overline", "fs-overline", "double"),
    ("Typography.Weight", "regular", "fw-regular", "int"), ("Typography.Weight", "medium", "fw-medium", "int"),
    ("Typography.Weight", "semibold", "fw-semibold", "int"), ("Typography.Weight", "bold", "fw-bold", "int"),
    ("Typography.LineHeight", "tight", "lh-tight", "double"), ("Typography.LineHeight", "normal", "lh-normal", "double"),
    ("Typography.LineHeight", "relaxed", "lh-relaxed", "double"),
    ("Typography.Tracking", "caps", "tracking-caps", "double"),
    ("Opacity", "faint", "op-faint", "double"), ("Opacity", "dim", "op-dim", "double"),
    ("Opacity", "subtle", "op-subtle", "double"), ("Opacity", "mist", "op-mist", "double"),
    ("Opacity", "soft", "op-soft", "double"), ("Opacity", "tint", "op-tint", "double"),
    ("Opacity", "glassFill", "op-glass-fill", "double"), ("Opacity", "glassBorder", "op-glass-border", "double"),
    ("Opacity", "glassHighlight", "op-glass-highlight", "double"), ("Opacity", "light", "op-light", "double"),
    ("Opacity", "disabled", "op-disabled", "double"), ("Opacity", "medium", "op-medium", "double"),
    ("Opacity", "strong", "op-strong", "double"), ("Opacity", "heavy", "op-heavy", "double"),
    ("Opacity", "near", "op-near", "double"),
]

# The 29 Zed-named syntax keys DesignKit's themes carry; CodeEditorKit looks them up by name.
SYNTAX_KEYS = [
    "attribute", "boolean", "comment", "constant", "constructor", "embedded", "emphasis",
    "function", "hint", "keyword", "label", "link_uri", "number", "operator", "predictive",
    "property", "punctuation", "punctuation.bracket", "punctuation.delimiter", "string",
    "string.special", "strong", "tag", "text.literal", "title", "type", "variable",
    "variable.special", "variant",
]
SYNTAX_COLOR = {
    "keyword": "syntax-keyword",
    "string": "syntax-string", "string.special": "syntax-string", "text.literal": "syntax-string",
    "number": "syntax-error", "boolean": "syntax-error", "constant": "syntax-error",
    "type": "accent-text", "constructor": "accent-text", "variant": "accent-text",
    "comment": "fg-secondary", "hint": "fg-secondary", "predictive": "fg-secondary",
}
SYNTAX_EXTRA = {"emphasis": ", fontStyle: .italic", "strong": ", fontWeight: 700", "title": ", fontWeight: 700"}
ANSI = ["black", "red", "green", "yellow", "blue", "magenta", "cyan", "white"]


class UnresolvableToken(Exception):
    pass


class Tokens:
    def __init__(self, semantic, extra):
        self.semantic = semantic  # name -> {theme: value}
        self.extra = extra        # name -> {theme: value} (tokens.json color tokens)


def parse_color(text):
    """'#rrggbb' | '#rrggbbaa' | 'rgb(r,g,b)' | 'rgba(r,g,b,a)' -> (0xRRGGBB, alpha)."""
    s = text.strip()
    m = re.fullmatch(r"#([0-9a-fA-F]{6})([0-9a-fA-F]{2})?", s)
    if m:
        alpha = round(int(m.group(2), 16) / 255, 4) if m.group(2) else 1.0
        return int(m.group(1), 16), alpha
    m = re.fullmatch(r"rgba?\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*(?:,\s*([0-9.]+)\s*)?\)", s)
    if m:
        r, g, b = (int(m.group(i)) for i in (1, 2, 3))
        alpha = round(float(m.group(4)), 4) if m.group(4) is not None else 1.0
        return (r << 16) | (g << 8) | b, alpha
    raise UnresolvableToken(f"unparseable colour value {text!r}")


def load_tokens(sources_dir):
    sources_dir = Path(sources_dir)
    semantic = json.loads((sources_dir / "semantic.json").read_text())
    extra = json.loads((sources_dir / "tokens.json").read_text())
    return Tokens(
        {t["name"]: _per_theme(t["value"]) for t in semantic["tokens"]},
        {t["name"]: _per_theme(t["value"]) for t in extra["color"]["tokens"]},
    )


def _per_theme(value):
    """A bare string value is the dark-base value; a dict is already per theme."""
    return dict(value) if isinstance(value, dict) else {DARK: value}


def resolve(tokens, name, theme, _seen=()):
    if name in _seen:
        raise UnresolvableToken(f"alias cycle through {name!r}")
    entry = tokens.semantic.get(name)
    if entry is None:
        entry = tokens.extra.get(name)
    if entry is None:
        raise UnresolvableToken(f"unknown token {name!r}")
    value = entry.get(theme)
    if value is None and theme != DARK:
        value = entry.get(DARK)
    if value is None:
        raise UnresolvableToken(f"token {name!r} has no value for {theme!r} or the dark base")
    value = str(value).strip()
    if value.startswith("{") and value.endswith("}"):
        return resolve(tokens, value[1:-1], theme, _seen + (name,))
    return parse_color(value)


# ---------------------------------------------------------------- emission

def _lit(rgb, alpha):
    if alpha == 1.0:
        return f"Tokens.Color(hex: 0x{rgb:06X})"
    return f"Tokens.Color(hex: 0x{rgb:06X}, alpha: {round(alpha, 4)!r})"


TRANSPARENT = "Tokens.Color(hex: 0x000000, alpha: 0.0)"


def render(tokens, source_commit):
    out = [
        f"// GENERATED by Scripts/generate-themes.py from Scripts/token-sources "
        f"(Platform design-system {source_commit}). Do not edit; run --sync.",
        "import DesignKitTokens",
        "",
        "extension Theme {",
    ]
    for name, theme, appearance in (("Dark", DARK, "dark"), ("Light", LIGHT, "light")):
        out += _render_theme(tokens, name, theme, appearance)
    out.append("}")
    return "\n".join(out) + "\n"


def _render_theme(tokens, name, theme, appearance):
    def c(token, alpha=None):
        rgb, a = resolve(tokens, token, theme)
        return _lit(rgb, alpha if alpha is not None else a)

    def status(fg, base):
        return f"StatusPalette.Status(base: {c(fg)}, background: {c(base, 0.14)}, border: {c(base)})"

    def vcs(fg, base):
        return f"VCSPalette.VCS(base: {c(fg)}, background: {c(base, 0.14)}, border: {c(base)})"

    def vcs_muted(fg):
        return f"VCSPalette.VCS(base: {c(fg)}, background: {TRANSPARENT}, border: {TRANSPARENT})"

    info = f"StatusPalette.Status(base: {c('accent')}, background: {c('btn-tonal-fill')}, border: {c('accent')})"
    info_vcs = f"VCSPalette.VCS(base: {c('accent')}, background: {c('btn-tonal-fill')}, border: {c('accent')})"

    syntax_lines = []
    for key in SYNTAX_KEYS:
        color = c(SYNTAX_COLOR.get(key, "fg"))
        syntax_lines.append(f'            "{key}": SyntaxStyle(color: {color}{SYNTAX_EXTRA.get(key, "")}),')

    ansi_args = ", ".join(f"{k}: {c('ansi-' + k)}" for k in ANSI)
    bright_args = ", ".join(f"bright{k.capitalize()}: {c('ansi-' + k)}" for k in ANSI)
    lower = appearance
    return [
        f"    private static let {lower}Style = ThemeStyle(",
        f"        background: {c('bg')},",
        "        editor: EditorColors(",
        f"            background: {c('bg')},",
        f"            foreground: {c('fg')},",
        f"            gutterBackground: {c('bg')},",
        f"            activeLineBackground: {c('fill-tertiary')},",   # neutral: must differ from the selection (row-selected)
        f"            highlightedLineBackground: {c('fill-secondary')},",
        f"            activeLineNumber: {c('fg')},",
        f"            lineNumber: {c('fg-tertiary')},",
        f"            invisible: {c('fg-disabled')},",
        f"            indentGuide: {c('border-hairline')},",
        f"            indentGuideActive: {c('border-strong')},",
        f"            wrapGuide: {c('border-hairline')},",
        f"            activeWrapGuide: {c('border-subtle')},",
        f"            subheaderBackground: {c('bg-secondary')},",
        f"            documentHighlightRead: {c('fill-secondary')},",
        f"            documentHighlightWrite: {c('btn-tonal-fill')},",
        f"            documentHighlightBracket: {c('fill-primary')}",
        "        ),",
        "        chrome: ChromeColors(",
        f"            titleBarBackground: {c('bg-secondary')},",
        f"            titleBarInactiveBackground: {c('bg')},",
        f"            tabBarBackground: {c('bg-secondary')},",
        f"            tabActiveBackground: {c('bg')},",
        f"            tabInactiveBackground: {c('bg-secondary')},",
        f"            statusBarBackground: {c('bg-secondary')},",
        f"            toolbarBackground: {c('bg-secondary')},",
        f"            surfaceBackground: {c('bg-secondary')},",
        f"            elevatedSurfaceBackground: {c('bg-elevated')},",
        f"            panelBackground: {c('bg-secondary')},",
        f"            panelFocusedBorder: {c('accent')},",
        f"            panelIndentGuide: {c('border-hairline')},",
        f"            panelIndentGuideActive: {c('border-strong')},",
        f"            panelIndentGuideHover: {c('border-subtle')},",
        f"            paneFocusedBorder: {c('accent')},",
        f"            paneGroupBorder: {c('border-hairline')}",
        "        ),",
        "        elements: ElementStates(",
        f"            element: ElementStates.States(background: {c('fill-tertiary')}, hover: {c('fill-secondary')}, active: {c('fill-primary')}, selected: {c('row-selected')}, disabled: {c('fill-quinary')}),",
        f"            ghostElement: ElementStates.States(background: {TRANSPARENT}, hover: {c('fill-tertiary')}, active: {c('fill-secondary')}, selected: {c('row-selected')}, disabled: {TRANSPARENT})",
        "        ),",
        "        borders: BorderColors(",
        f"            base: {c('border-subtle')},",
        f"            disabled: {c('border-hairline')},",
        f"            focused: {c('focus-ring')},",
        f"            selected: {c('accent')},",
        f"            transparent: {TRANSPARENT},",
        f"            variant: {c('border-hairline')}",
        "        ),",
        f"        text: TextLevels(base: {c('fg')}, muted: {c('fg-secondary')}, placeholder: {c('fg-tertiary')}, disabled: {c('fg-disabled')}, accent: {c('accent-text')}),",
        f"        icon: IconLevels(base: {c('fg')}, muted: {c('fg-secondary')}, placeholder: {c('fg-tertiary')}, disabled: {c('fg-disabled')}, accent: {c('accent')}),",
        "        status: StatusPalette(",
        f"            info: {info},",
        f"            success: {status('status-success-fg', 'status-success')},",
        f"            warning: {status('status-warning-fg', 'status-warning')},",
        f"            error: {status('status-error-fg', 'status-error')},",
        f"            conflict: {status('status-warning-fg', 'status-warning')}",
        "        ),",
        "        vcs: VCSPalette(",
        f"            created: {vcs('status-success-fg', 'status-success')},",
        f"            modified: {vcs('status-warning-fg', 'status-warning')},",
        f"            deleted: {vcs('status-error-fg', 'status-error')},",
        f"            renamed: {info_vcs},",
        f"            ignored: {vcs_muted('fg-tertiary')},",
        f"            hidden: {vcs_muted('fg-disabled')},",
        f"            unreachable: {vcs_muted('fg-disabled')}",
        "        ),",
        f"        scrollbar: ScrollbarColors(trackBackground: {TRANSPARENT}, trackBorder: {TRANSPARENT}, thumbBackground: {c('fill-secondary')}, thumbBorder: {TRANSPARENT}, thumbHoverBackground: {c('fill-primary')}),",
        f"        search: SearchColors(matchBackground: {c('btn-tonal-fill')}),",
        f"        predictive: PredictiveColors(base: {c('fg-tertiary')}, background: {TRANSPARENT}, border: {TRANSPARENT}),",
        f"        hint: HintColors(base: {c('fg-secondary')}, background: {c('fill-quaternary')}, border: {TRANSPARENT}),",
        f"        dropTarget: {c('btn-tonal-fill')},",
        f"        linkTextHover: {c('accent-text')},",
        f"        players: [Player(cursor: {c('accent')}, selection: {c('row-selected')})],",
        f"        accents: [{c('accent')}],",
        "        syntax: [",
        *syntax_lines,
        "        ],",
        f"        terminal: TerminalColors(foreground: {c('fg')}, background: {c('bg')}, ansi: TerminalColors.ANSI({ansi_args}, {bright_args}))",
        "    )",
        "",
        f"    private static let {lower}Glass: GlassStyle = {{",
        f"        let elevation = Tokens.Elevation.popover(.{appearance})",
        "        return GlassStyle(",
        f"            glass: GlassStyle.Glass(tint: {c('bg-elevated')}, opacity: 0.12),",
        "            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: elevation.color, blur: elevation.blur, xOffset: elevation.x, yOffset: elevation.y)),",
        f"            field: GlassStyle.Field(fill: {c('field-bg')}, border: {c('field-border')}, focusedBorder: {c('field-border-focus')}),",
        f"            onAccent: {c('accent-contrast')},",
        f"            onDanger: {c('accent-contrast')}",
        "        )",
        "    }()",
        "",
        f"    /// {name} — generated from the design system's semantic tokens.",
        f"    public static let {lower} = Theme(name: \"{name}\", appearance: .{appearance}, style: {lower}Style, glass: {lower}Glass)",
        "",
    ]


# ---------------------------------------------------------------- layout

def _px(text, name):
    m = re.fullmatch(r"\s*(-?[0-9]+(?:\.[0-9]+)?)px\s*", str(text))
    if not m:
        raise UnresolvableToken(f"{name}: not a px dimension ({text!r})")
    value = float(m.group(1))
    return int(value) if value.is_integer() else value


def load_layout(sources_dir):
    """Every layout-* dimension: tokens.json's families, then platform.css's :root additions."""
    sources_dir = Path(sources_dir)
    layout = {}
    for family in json.loads((sources_dir / "tokens.json").read_text()).values():
        if isinstance(family, dict):
            for token in family.get("tokens", []):
                name = str(token.get("name", ""))
                if name.startswith("layout-"):
                    layout[name] = _px(token["value"], name)
    css = (sources_dir / "platform.css").read_text()
    for name, value in re.findall(r"--(layout-[a-z0-9-]+)\s*:\s*([^;]+);", css):
        layout[name] = _px(value, name)
    return layout


def render_layout(layout, source_commit):
    lines = [
        f"// GENERATED by Scripts/generate-themes.py from Scripts/token-sources (Platform design-system {source_commit}). Do not edit; run --sync.",
        "",
        "extension Tokens.Size {",
        "    /// Window and pane metrics from the design system's `layout-*` tokens (points).",
        "    public enum Layout {",
    ]
    for name, identifier in LAYOUT_MAP.items():
        if name not in layout:
            raise UnresolvableToken(f"layout token {name} not found in tokens.json or platform.css")
        value = layout[name]
        lines.append(f"        /// `{name}`.")
        lines.append(f"        public static let {identifier}: Double = {value}")
    lines += ["    }", "}", ""]
    return "\n".join(lines)


# ---------------------------------------------------------------- scalars

def load_scalars(sources_dir):
    """Every named scalar token in tokens.json's families, plus type.families.* stacks."""
    data = json.loads((Path(sources_dir) / "tokens.json").read_text())
    scalars = {}
    for family in data.values():
        if isinstance(family, dict):
            for token in family.get("tokens", []):
                name = token.get("name")
                if name and isinstance(token.get("value"), (str, int, float)):
                    scalars.setdefault(str(name), token["value"])
    for key, value in data.get("type", {}).get("families", {}).items():
        scalars[f"type.families.{key}"] = value
    return scalars


def _number(text, name):
    m = re.fullmatch(r"\s*(-?[0-9]+(?:\.[0-9]+)?)(?:px)?\s*", str(text))
    if not m:
        raise UnresolvableToken(f"{name}: not a number ({text!r})")
    value = float(m.group(1))
    return int(value) if value.is_integer() else value


def _stack(text):
    return [part.strip().strip('"').strip("'") for part in str(text).split(",") if part.strip()]


def render_tokens(scalars, source_commit):
    lines = [
        f"// GENERATED by Scripts/generate-themes.py from Scripts/token-sources (Platform design-system {source_commit}). Do not edit; run --sync.",
        "",
    ]
    current = None
    for enum, member, token, kind in SCALAR_MAP:
        if token not in scalars:
            raise UnresolvableToken(f"scalar token {token} not found in tokens.json")
        if enum != current:
            if current is not None:
                lines += ["}", ""]
            lines.append(f"extension Tokens.{enum} {{")
            current = enum
        value = scalars[token]
        lines.append(f"    /// `{token}`.")
        if kind == "stack":
            items = ", ".join(f'"{part}"' for part in _stack(value))
            lines.append(f"    public static let {member}: [String] = [{items}]")
        elif kind == "int":
            lines.append(f"    public static let {member} = {int(_number(value, token))}")
        else:
            lines.append(f"    public static let {member}: Double = {_number(value, token)}")
    lines += ["}", ""]
    return "\n".join(lines)


# ---------------------------------------------------------------- CLI

def _source_commit(sources_dir):
    text = (Path(sources_dir) / "SOURCE.md").read_text()
    m = re.search(r"Commit:\s*([0-9a-f]{7,40})", text)
    return m.group(1)[:8] if m else "unknown"


def _sync(design_system, sources_dir):
    design_system = Path(design_system)
    sources_dir = Path(sources_dir)
    sources_dir.mkdir(parents=True, exist_ok=True)
    for src, dst in (("tokens/semantic.json", "semantic.json"), ("tokens.json", "tokens.json"),
                     ("tokens/type-scales.json", "type-scales.json"), ("platform.css", "platform.css")):
        shutil.copyfile(design_system / src, sources_dir / dst)
    log = subprocess.run(
        ["git", "-C", str(design_system), "log", "-1", "--format=%H %ad", "--date=short", "--", "."],
        check=True, capture_output=True, text=True).stdout.split()
    commit, date = (log + ["unknown", "unknown"])[:2]
    (sources_dir / "SOURCE.md").write_text(
        "# Token sources\n\n"
        "Vendored copies of the Apple Systems design-system token files, the input to\n"
        "`Scripts/generate-themes.py`.\n\n"
        "- Repository: https://github.com/ajmcclary/Platform\n"
        "- Path: projects/design-system\n"
        f"- Commit: {commit}\n"
        f"- Date: {date}\n\n"
        "Replaced wholesale by `Scripts/generate-themes.py --sync`; never edited by hand.\n")


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--sync", action="store_true")
    parser.add_argument("--design-system", metavar="DIR")
    parser.add_argument("--check", action="store_true")
    parser.add_argument("--sources", metavar="DIR", default=str(SOURCES_DIR))
    parser.add_argument("--output", metavar="FILE", default=str(OUTPUT))
    parser.add_argument("--layout-output", metavar="FILE", default=str(LAYOUT_OUTPUT))
    parser.add_argument("--tokens-output", metavar="FILE", default=str(TOKENS_OUTPUT))
    args = parser.parse_args(argv)
    sources_dir = Path(args.sources)
    try:
        if args.sync:
            if not args.design_system:
                parser.error("--sync requires --design-system DIR")
            _sync(args.design_system, sources_dir)
        commit = _source_commit(sources_dir)
        outputs = [
            (Path(args.output), render(load_tokens(sources_dir), commit)),
            (Path(args.layout_output), render_layout(load_layout(sources_dir), commit)),
            (Path(args.tokens_output), render_tokens(load_scalars(sources_dir), commit)),
        ]
    except UnresolvableToken as e:
        print(f"generate-themes: {e}", file=sys.stderr)
        return 2
    if args.check:
        stale = 0
        for output, swift in outputs:
            current = output.read_text() if output.exists() else ""
            if current == swift:
                print(f"generate-themes: {output.name} is up to date")
                continue
            stale = 1
            print(f"generate-themes: {output} is stale; run Scripts/generate-themes.py", file=sys.stderr)
            sys.stderr.writelines(difflib.unified_diff(
                current.splitlines(keepends=True), swift.splitlines(keepends=True),
                fromfile=str(output), tofile="generated"))
        return stale
    for output, swift in outputs:
        output.write_text(swift)
        print(f"generate-themes: wrote {output}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
