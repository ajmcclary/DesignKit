#!/usr/bin/env python3
"""One-time refresh of DesignKit theme values from the 2026-07-11 upstream
sync (RepoPrompt's colors_and_type.css, via its committed RPPaletteHex.swift
parse). Patches only the roles the CSS defines; everything else (terminal,
scrollbar, predictive, hint, players, glass tint/shadows, syntax weights)
keeps its current value. Idempotent; run with:

    python3 Scripts/refresh-themes-from-css.py <path-to-RPPaletteHex.swift>
"""
import re
import sys
from pathlib import Path

THEMES_DIR = Path(__file__).resolve().parent.parent / "Sources/DesignKitThemes/Themes"

SPEC_TO_STATIC = {
    "lcars": ("Theme+LCARS.swift", "lcarsDark"),
    "lcarsLight": ("Theme+LCARS.swift", "lcarsLight"),
    "lcarsHC": ("Theme+LCARSHighContrast.swift", "lcarsHighContrastDark"),
    "lcarsHCLight": ("Theme+LCARSHighContrast.swift", "lcarsHighContrastLight"),
    "federation": ("Theme+Federation.swift", "federationDark"),
    "federationLight": ("Theme+Federation.swift", "federationLight"),
    "redAlert": ("Theme+RedAlert.swift", "redAlertDark"),
    "redAlertLight": ("Theme+RedAlert.swift", "redAlertLight"),
    "sickBay": ("Theme+SickBay.swift", "sickBayDark"),
    "sickBayLight": ("Theme+SickBay.swift", "sickBayLight"),
    "blackAlert": ("Theme+BlackAlert.swift", "blackAlertDark"),
    "blackAlertLight": ("Theme+BlackAlert.swift", "blackAlertLight"),
    "borgCube": ("Theme+BorgCube.swift", "borgCubeDark"),
    "borgCubeLight": ("Theme+BorgCube.swift", "borgCubeLight"),
    "command": ("Theme+Command.swift", "commandDark"),
    "commandLight": ("Theme+Command.swift", "commandLight"),
    "yellowAlert": ("Theme+YellowAlert.swift", "yellowAlertDark"),
    "yellowAlertLight": ("Theme+YellowAlert.swift", "yellowAlertLight"),
    "missionControl": ("Theme+MissionControl.swift", "missionControlDark"),
    "missionControlLight": ("Theme+MissionControl.swift", "missionControlLight"),
    "readyRoom": ("Theme+ReadyRoom.swift", "readyRoomDark"),
    "readyRoomLight": ("Theme+ReadyRoom.swift", "readyRoomLight"),
}

# RPPaletteHex field -> (designkit group label, field label). Group label ""
# means the ThemeStyle-level field.
FIELD_MAP = {
    "bg": ("ThemeStyle", "background"),
    "surface": ("ChromeColors", "surfaceBackground"),
    "elevated": ("ChromeColors", "elevatedSurfaceBackground"),
    "panel": ("ChromeColors", "panelBackground"),
    "editorBg": ("EditorColors", "background"),
    "editorFg": ("EditorColors", "foreground"),
    "editorGutter": ("EditorColors", "gutterBackground"),
    "titleBar": ("ChromeColors", "titleBarBackground"),
    "toolbar": ("ChromeColors", "toolbarBackground"),
    "tabBar": ("ChromeColors", "tabBarBackground"),
    "tabActive": ("ChromeColors", "tabActiveBackground"),
    "tabInactive": ("ChromeColors", "tabInactiveBackground"),
    "statusBar": ("ChromeColors", "statusBarBackground"),
    "border": ("BorderColors", "base"),
    "borderVariant": ("BorderColors", "variant"),
    "borderFocused": ("BorderColors", "focused"),
    "borderSelected": ("BorderColors", "selected"),
    "text": ("TextLevels", "base"),
    "textAccent": ("TextLevels", "accent"),
    "textMuted": ("TextLevels", "muted"),
    "textDisabled": ("TextLevels", "disabled"),
    "textPlaceholder": ("TextLevels", "placeholder"),
    "icon": ("IconLevels", "base"),
    "iconAccent": ("IconLevels", "accent"),
    "iconMuted": ("IconLevels", "muted"),
    "elementBg": ("element", "background"),
    "elementHover": ("element", "hover"),
    "elementActive": ("element", "active"),
    "elementSelected": ("element", "selected"),
    "ghostHover": ("ghostElement", "hover"),
    "ghostActive": ("ghostElement", "active"),
    "ghostSelected": ("ghostElement", "selected"),
    "lineNum": ("EditorColors", "lineNumber"),
    "activeLineNum": ("EditorColors", "activeLineNumber"),
    "activeLine": ("EditorColors", "activeLineBackground"),
    "highlightedLine": ("EditorColors", "highlightedLineBackground"),
    "searchMatch": ("SearchColors", "matchBackground"),
    "diagError": ("error", "base"),
    "diagWarning": ("warning", "base"),
    "diagInfo": ("info", "base"),
    "diagSuccess": ("success", "base"),
    "diagModified": ("modified", "base"),
    "onAccent": ("GlassStyle", "onAccent"),
    "onDanger": ("GlassStyle", "onDanger"),
}

SYNTAX_MAP = {
    "keyword": "keyword", "string": "string", "comment": "comment",
    "function": "function", "type": "type", "number": "number",
    "constant": "constant", "property": "property", "variable": "variable",
    "punct": "punctuation", "tag": "tag", "attr": "attribute",
}

# Group labels that open a scope in the emitted files, mapped from the
# initializer text on the line.
GROUP_OPENERS = {
    "editor: EditorColors(": "EditorColors",
    "chrome: ChromeColors(": "ChromeColors",
    "borders: BorderColors(": "BorderColors",
    "text: TextLevels(": "TextLevels",
    "icon: IconLevels(": "IconLevels",
    "search: SearchColors(matchBackground:": "SearchColors",
    "element: ElementStates.States(": "element",
    "ghostElement: ElementStates.States(": "ghostElement",
    "error: StatusPalette.Status(": "error",
    "warning: StatusPalette.Status(": "warning",
    "info: StatusPalette.Status(": "info",
    "success: StatusPalette.Status(": "success",
    "modified: VCSPalette.VCS(": "modified",
    "glass: GlassStyle(": "GlassStyle",
    "style: ThemeStyle(": "ThemeStyle",
}


def parse_specs(palette_hex_path):
    """Parse the RPPaletteHex.swift static specs into
    {spec: {field: hex | (hex, opacity)}} plus {spec: {syntaxRole: hex}}."""
    text = Path(palette_hex_path).read_text()
    specs, syntaxes = {}, {}
    chunks = re.split(r"\bstatic let (\w+) = RPPaletteHex\(", text)
    # chunks: [prefix, name1, body1..., name2, body2...]
    for name, body in zip(chunks[1::2], chunks[2::2]):
        fields = {}
        for fm in re.finditer(r'(\w+): "(#[0-9A-Fa-f]{6})"', body):
            fields[fm.group(1)] = fm.group(2)
        for gm in re.finditer(
            r'(\w+): RPGhostHex\(hex: "(#[0-9A-Fa-f]{6})", opacity: ([0-9.]+)\)', body
        ):
            fields[gm.group(1)] = (gm.group(2), float(gm.group(3)))
        syn = {}
        sm = re.search(r"syntax: RPSyntaxHex\((.*?)\)", body, re.S)
        if sm:
            for fm in re.finditer(r'(\w+): "(#[0-9A-Fa-f]{6})"', sm.group(1)):
                syn[fm.group(1)] = fm.group(2)
        # The generic field regex also captured syntax entries; drop them.
        for k in syn:
            fields.pop(k, None)
        specs[name] = fields
        syntaxes[name] = syn
    return specs, syntaxes


def swift_color(value):
    if isinstance(value, tuple):
        hexv, opacity = value
        return f"Tokens.Color(hex: 0x{hexv[1:].upper()}, alpha: {opacity:.4f})"
    return f"Tokens.Color(hex: 0x{value[1:].upper()})"



COLOR_RE = r"Tokens\.Color\(hex: 0x[0-9A-F]+(?:, alpha: [0-9.]+)?\)"


def patch_single_line_groups(block, wanted):
    """element/ghostElement States, Status and VCS groups are emitted on one
    line each; patch named args in place."""
    import re as _re
    changed = 0

    def patch_arg(line_pat, group, arg):
        nonlocal block, changed
        key = (group, arg)
        if key not in wanted:
            return
        value = swift_color(wanted[key])
        m = _re.search(line_pat, block)
        if not m:
            return
        seg = m.group(0)
        new_seg, n = _re.subn(
            rf"(\b{arg}: ){COLOR_RE}", rf"\g<1>{value}", seg, count=1
        )
        if n:
            block = block[: m.start()] + new_seg + block[m.end() :]
            changed += n
            del wanted[key]

    for grp, line_pat in [
        ("element", rf"element: ElementStates\.States\([^\n]*\)"),
        ("ghostElement", rf"ghostElement: ElementStates\.States\([^\n]*\)"),
        ("error", rf"error: StatusPalette\.Status\([^\n]*\)"),
        ("warning", rf"warning: StatusPalette\.Status\([^\n]*\)"),
        ("info", rf"info: StatusPalette\.Status\([^\n]*\)"),
        ("success", rf"success: StatusPalette\.Status\([^\n]*\)"),
        ("modified", rf"modified: VCSPalette\.VCS\([^\n]*\)"),
    ]:
        for arg in ("background", "hover", "active", "selected", "base"):
            patch_arg(line_pat, grp, arg)
    return block, changed


def patch_theme(path, static_name, fields, syntax):
    text = path.read_text()
    start = text.index(f"public static let {static_name} = Theme(")
    # Block ends at the next `public static let` or EOF.
    next_m = re.search(r"\n    public static let ", text[start + 10 :])
    end = start + 10 + next_m.start() if next_m else len(text)
    block = text[start:end]

    lines = block.split("\n")
    stack = []
    changed = 0
    wanted = {}
    for rp_field, (group, dk_field) in FIELD_MAP.items():
        if rp_field in fields:
            wanted[(group, dk_field)] = fields[rp_field]

    for i, line in enumerate(lines):
        stripped = line.strip()
        for opener, label in GROUP_OPENERS.items():
            if stripped.startswith(opener):
                depth = 0
                stack.append((label, len(line) - len(line.lstrip())))
                break
        # Pop scopes whose closing paren indent has been reached: detect lines
        # that are just `),` or `)` at an indent <= the opener's.
        while stack and re.fullmatch(r"\)?,?", stripped) and stripped.startswith(")"):
            indent = len(line) - len(line.lstrip())
            if indent <= stack[-1][1]:
                stack.pop()
            else:
                break
        current = stack[-1][0] if stack else None
        fm = re.match(r"^(\s*)(\w+): (Tokens\.Color\(hex: [^)]*\))(,?)$", line)
        if fm and current:
            key = (current, fm.group(2))
            if key in wanted:
                new = f"{fm.group(1)}{fm.group(2)}: {swift_color(wanted[key])}{fm.group(4)}"
                if new != line:
                    lines[i] = new
                    changed += 1
                del wanted[key]
        # SearchColors is emitted single-line.
        sm = re.match(
            r"^(\s*)search: SearchColors\(matchBackground: Tokens\.Color\(hex: [^)]*\)\)(,?)$",
            line,
        )
        if sm and ("SearchColors", "matchBackground") in wanted:
            lines[i] = (
                f"{sm.group(1)}search: SearchColors(matchBackground: "
                f"{swift_color(wanted[('SearchColors', 'matchBackground')])}){sm.group(2)}"
            )
            changed += 1
            del wanted[("SearchColors", "matchBackground")]

    block = "\n".join(lines)

    block, single_changed = patch_single_line_groups(block, wanted)
    changed += single_changed

    # Accents array: replace the 5 entries wholesale when accent1..5 present.
    accents = [fields.get(f"accent{i}") for i in range(1, 6)]
    if all(accents):
        indent = "                "
        entries = "\n".join(f"{indent}    {swift_color(a)}," for a in accents)
        block, n = re.subn(
            r"accents: \[\n(?:\s*Tokens\.Color\([^)]*\),\n)+\s*\]",
            f"accents: [\n{entries}\n{indent}]",
            block,
            count=1,
        )
        changed += n

    # Syntax colors: patch the `color:` of the 12 core roles, keep weights.
    for rp_role, dk_role in SYNTAX_MAP.items():
        if rp_role not in syntax:
            continue
        new_color = f"Tokens.Color(hex: 0x{syntax[rp_role][1:].upper()})"
        block, n = re.subn(
            rf'("{dk_role}": SyntaxStyle\(color: )Tokens\.Color\(hex: [^)]*\)',
            rf"\g<1>{new_color}",
            block,
            count=1,
        )
        changed += n

    leftovers = [k for k in wanted]
    path.write_text(text[:start] + block + text[end:])
    return changed, leftovers


def main():
    specs, syntaxes = parse_specs(sys.argv[1])
    assert len(specs) == 22, f"expected 22 specs, parsed {len(specs)}"
    total = 0
    for spec_name, (file_name, static_name) in SPEC_TO_STATIC.items():
        changed, leftovers = patch_theme(
            THEMES_DIR / file_name, static_name, specs[spec_name], syntaxes[spec_name]
        )
        print(f"{static_name}: {changed} fields updated"
              + (f"; UNMATCHED: {leftovers}" if leftovers else ""))
        total += changed
    print(f"total: {total}")


if __name__ == "__main__":
    main()
