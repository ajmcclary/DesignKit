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


if __name__ == "__main__":
    unittest.main()
