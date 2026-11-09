#!/usr/bin/env python3
"""Tests for generate-themes.py. Run: python3 -I Scripts/generate-themes-tests.py"""
import contextlib
import io
import json
import shutil
import sys
import tempfile
import unittest
from pathlib import Path

import importlib.util

sys.dont_write_bytecode = True  # a stale __pycache__ entry must never shadow the script under test
_spec = importlib.util.spec_from_file_location(
    "generate_themes", Path(__file__).resolve().parent / "generate-themes.py")
generate_themes = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(generate_themes)
SOURCES_DIR, SYNTAX_KEYS, UnresolvableToken = (
    generate_themes.SOURCES_DIR, generate_themes.SYNTAX_KEYS, generate_themes.UnresolvableToken)
load_tokens, main, parse_color, render, resolve = (
    generate_themes.load_tokens, generate_themes.main, generate_themes.parse_color,
    generate_themes.render, generate_themes.resolve)


class ColorParsing(unittest.TestCase):
    def test_hex6(self):
        self.assertEqual(parse_color("#1e1e1e"), (0x1E1E1E, 1.0))

    def test_hex8(self):
        self.assertEqual(parse_color("#0a99ff33"), (0x0A99FF, 0.2))

    def test_rgba(self):
        self.assertEqual(parse_color("rgba(255,255,255,0.85)"), (0xFFFFFF, 0.85))

    def test_rgb(self):
        self.assertEqual(parse_color("rgb(56,56,58)"), (0x38383A, 1.0))


class Resolution(unittest.TestCase):
    def test_alias_resolves_within_theme(self):
        tokens = load_tokens(SOURCES_DIR)
        self.assertEqual(resolve(tokens, "accent-text", "light"), parse_color("#0a99ff"))

    def test_missing_light_inherits_dark(self):
        tokens = load_tokens(SOURCES_DIR)
        self.assertEqual(resolve(tokens, "accent-contrast", "root-light"), parse_color("#ffffff"))

    def test_generatorRejectsUnresolvableAlias(self):
        tokens = load_tokens(SOURCES_DIR)
        tokens.semantic["field-bg"] = {"light": "{no-such-token}"}
        with self.assertRaises(UnresolvableToken) as cm:
            resolve(tokens, "field-bg", "light")
        self.assertIn("no-such-token", str(cm.exception))


class Emission(unittest.TestCase):
    def test_emits_both_themes(self):
        swift = render(load_tokens(SOURCES_DIR), source_commit="9fa9816f")
        self.assertIn("public static let dark = Theme(", swift)
        self.assertIn("public static let light = Theme(", swift)
        self.assertIn('name: "Dark"', swift)
        self.assertIn("Tokens.Color(hex: 0x1E1E1E)", swift)
        self.assertIn("Tokens.Color(hex: 0xFFFFFF, alpha: 0.85)", swift)
        self.assertIn("9fa9816f", swift.splitlines()[0])

    def test_every_syntax_key_emitted(self):
        swift = render(load_tokens(SOURCES_DIR), source_commit="x")
        for key in SYNTAX_KEYS:
            self.assertIn(f'"{key}": SyntaxStyle(', swift)


class Check(unittest.TestCase):
    def test_generatorCheckFailsOnDrift(self):
        with tempfile.TemporaryDirectory() as tmp:
            sources = Path(shutil.copytree(SOURCES_DIR, Path(tmp) / "token-sources"))
            out = Path(tmp) / "Theme+ReadyRoom.swift"
            self.assertEqual(main(["--sources", str(sources), "--output", str(out), "--layout-output", str(Path(tmp) / "Size+Layout.swift"), "--tokens-output", str(Path(tmp) / "Tokens+Generated.swift"), "--palette-output", str(Path(tmp) / "Palette+Generated.swift")]), 0)
            self.assertEqual(main(["--check", "--sources", str(sources), "--output", str(out), "--layout-output", str(Path(tmp) / "Size+Layout.swift"), "--tokens-output", str(Path(tmp) / "Tokens+Generated.swift"), "--palette-output", str(Path(tmp) / "Palette+Generated.swift")]), 0)
            sem = json.loads((sources / "semantic.json").read_text())
            next(t for t in sem["tokens"] if t["name"] == "accent")["value"]["light"] = "#5a9dd8"
            (sources / "semantic.json").write_text(json.dumps(sem))
            with contextlib.redirect_stderr(io.StringIO()) as err:
                self.assertEqual(main(["--check", "--sources", str(sources), "--output", str(out), "--layout-output", str(Path(tmp) / "Size+Layout.swift"), "--tokens-output", str(Path(tmp) / "Tokens+Generated.swift"), "--palette-output", str(Path(tmp) / "Palette+Generated.swift")]), 1)
            self.assertIn("Theme+ReadyRoom.swift", err.getvalue())
            self.assertIn("0x5A9DD8", err.getvalue())


class Layout(unittest.TestCase):
    def test_layout_tokens_parsed(self):
        layout = generate_themes.load_layout(SOURCES_DIR)
        self.assertEqual(layout["layout-sidebar-ideal"], 220)
        self.assertEqual(layout["layout-inspector-ideal"], 300)  # platform.css, not tokens.json
        self.assertEqual(layout["layout-window-min-w"], 960)

    def test_conflicting_and_scoped_layout_declarations_are_refused(self):
        for extra in (":root { --layout-sidebar-ideal: 180px; }",
                      ".compact { --layout-sidebar-ideal: 180px; }",
                      "@media (max-width: 800px) { :root { --layout-sidebar-ideal: 180px; } }"):
            with tempfile.TemporaryDirectory() as tmp:
                sources = Path(shutil.copytree(SOURCES_DIR, Path(tmp) / "token-sources"))
                css = sources / "platform.css"
                css.write_text(css.read_text() + "\n" + extra)
                with self.assertRaises(UnresolvableToken):
                    generate_themes.load_layout(sources)

    def test_layout_render(self):
        swift = generate_themes.render_layout(generate_themes.load_layout(SOURCES_DIR), source_commit="9fa9816f")
        self.assertIn("9fa9816f", swift.splitlines()[0])
        self.assertIn("public static let sidebarIdeal: Double = 220", swift)
        self.assertIn("public static let inspectorStep: Double = 16", swift)
        for identifier in generate_themes.LAYOUT_MAP.values():
            self.assertIn(f"public static let {identifier}: Double = ", swift)

    def test_unknown_layout_token_rejected(self):
        layout = generate_themes.load_layout(SOURCES_DIR)
        del layout["layout-detail-min"]
        with self.assertRaises(UnresolvableToken) as cm:
            generate_themes.render_layout(layout, source_commit="x")
        self.assertIn("layout-detail-min", str(cm.exception))

    def test_check_covers_layout_output(self):
        with tempfile.TemporaryDirectory() as tmp:
            sources = Path(shutil.copytree(SOURCES_DIR, Path(tmp) / "token-sources"))
            out = Path(tmp) / "Theme+ReadyRoom.swift"
            layout_out = Path(tmp) / "Size+Layout.swift"
            argv = ["--sources", str(sources), "--output", str(out), "--layout-output", str(layout_out),
                    "--tokens-output", str(Path(tmp) / "Tokens+Generated.swift"),
                    "--palette-output", str(Path(tmp) / "Palette+Generated.swift")]
            self.assertEqual(main(argv), 0)
            self.assertEqual(main(["--check"] + argv), 0)
            css = (sources / "platform.css").read_text().replace("--layout-inspector-ideal: 300px", "--layout-inspector-ideal: 312px")
            (sources / "platform.css").write_text(css)
            with contextlib.redirect_stderr(io.StringIO()) as err:
                self.assertEqual(main(["--check"] + argv), 1)
            self.assertIn("Size+Layout.swift", err.getvalue())


class Scalars(unittest.TestCase):
    def test_rendersSpacingShapeTypographyOpacity(self):
        swift = generate_themes.render_tokens(generate_themes.load_scalars(SOURCES_DIR), source_commit="9fa9816f")
        self.assertIn("Platform design-system 9fa9816f", swift)
        for line in ("extension Tokens.Spacing {", "public static let smMd: Double = 10",
                     "public static let cardPadding: Double = 16",
                     "extension Tokens.Shape {", "public static let radiusFull: Double = 9999",
                     "public static let strokeMedLight: Double = 1.5",
                     "extension Tokens.Typography.Size {", "public static let displayXL: Double = 80",
                     "extension Tokens.Typography.Weight {", "public static let semibold = 600",
                     "extension Tokens.Typography.LineHeight {", "public static let relaxed: Double = 1.5",
                     "extension Tokens.Typography.Tracking {", "public static let caps: Double = 0.5",
                     "extension Tokens.Opacity {", "public static let glassHighlight: Double = 0.15",
                     '"SF Mono", "ui-monospace", "Menlo", "Consolas", "monospace"'):
            self.assertIn(line, swift)

    def test_unknownTokenFailsLoudly(self):
        scalars = generate_themes.load_scalars(SOURCES_DIR)
        del scalars["sp-md"]
        with self.assertRaises(UnresolvableToken) as cm:
            generate_themes.render_tokens(scalars, source_commit="x")
        self.assertIn("sp-md", str(cm.exception))

    def test_checkCoversTokensOutput(self):
        with tempfile.TemporaryDirectory() as tmp:
            sources = Path(shutil.copytree(SOURCES_DIR, Path(tmp) / "token-sources"))
            argv = ["--sources", str(sources), "--output", str(Path(tmp) / "a.swift"),
                    "--layout-output", str(Path(tmp) / "b.swift"), "--tokens-output", str(Path(tmp) / "Tokens+Generated.swift"),
                    "--palette-output", str(Path(tmp) / "Palette+Generated.swift")]
            self.assertEqual(main(argv), 0)
            self.assertEqual(main(["--check"] + argv), 0)
            data = json.loads((sources / "tokens.json").read_text())
            for token in data["spacing"]["tokens"]:
                if token["name"] == "sp-md":
                    token["value"] = "14px"
            (sources / "tokens.json").write_text(json.dumps(data))
            with contextlib.redirect_stderr(io.StringIO()) as err:
                self.assertEqual(main(["--check"] + argv), 1)
            self.assertIn("Tokens+Generated.swift", err.getvalue())


class OklchParsing(unittest.TestCase):
    """CSS Color 4 reference points (the spec's own oklch values for the sRGB primaries)."""
    def assertNear(self, value, expected):
        got = [(value[0] >> 16) & 0xFF, (value[0] >> 8) & 0xFF, value[0] & 0xFF]
        want = [(expected >> 16) & 0xFF, (expected >> 8) & 0xFF, expected & 0xFF]
        for g, w in zip(got, want):
            self.assertLessEqual(abs(g - w), 1, f"{got} vs {want}")

    def test_knownValues(self):
        self.assertNear(parse_color("oklch(0.628 0.2577 29.23)"), 0xFF0000)
        self.assertNear(parse_color("oklch(0.452 0.313 264.05)"), 0x0000FF)
        self.assertNear(parse_color("oklch(0.8664 0.2948 142.5)"), 0x00FF00)
        self.assertEqual(parse_color("oklch(1 0 0)"), (0xFFFFFF, 1.0))
        self.assertEqual(parse_color("oklch(0 0 0)"), (0x000000, 1.0))

    def test_accentHoverIsADarkerAccent(self):
        hover, _ = parse_color("oklch(0.6027 0.1647 249.12)")
        accent = 0x0A99FF
        self.assertLess(sum((hover >> s) & 0xFF for s in (16, 8, 0)), sum((accent >> s) & 0xFF for s in (16, 8, 0)))
        self.assertGreater(hover & 0xFF, (hover >> 16) & 0xFF, "still blue")


class Palette(unittest.TestCase):
    def test_rendersAccentStatusTrafficLightANSI(self):
        swift = generate_themes.render_palette(load_tokens(SOURCES_DIR), source_commit="9fa9816f")
        for line in ("extension Tokens.Palette.Accent {", "public static let dark = Tokens.Color(hex: 0x0A99FF)",
                     "public static let light = Tokens.Color(hex: 0x0078F0)", "public static let tint10Dark = Tokens.Color(hex: 0x0A99FF, alpha: 0.1)",
                     "public static let tint25Light = Tokens.Color(hex: 0x0078F0, alpha: 0.25)",
                     "extension Tokens.Palette.Status {", "public static let successLight = Tokens.Color(hex: 0x299B45)",
                     "public static let infoDark = Tokens.Color(hex: 0x0A99FF)",
                     "extension Tokens.Palette.TrafficLight {", "public static let close = Tokens.Color(hex: 0xFF5C60)",
                     "extension Tokens.Palette.ANSI {", "public static let red = Tokens.Color(hex: 0xF44747)"):
            self.assertIn(line, swift)


if __name__ == "__main__":
    unittest.main()
