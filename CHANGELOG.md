# Changelog

All notable changes to DesignKit are documented here. This project adheres to
[Semantic Versioning](https://semver.org/).

## [Unreleased]

## [3.0.0-beta.1] - 2026-11-03

Breaking release: the ZedTrek theme family is gone and the theme pair is
generated from the Apple Systems design system.

### Removed

- `Theme.Family` and the twelve families (`Theme.lcarsDark`, `.lcarsLight`,
  `.blackAlertDark`, `.classicDark`, `.lcarsHighContrastDark`, and the rest).
- `ThemeSelection.family`, `ThemeSelectionController.setFamily(_:)`,
  `ThemeSelectionPersistence.saveFamily(_:)`, and the
  `designKit.themeSelection.family` UserDefaults key (never read again).
- `Scripts/refresh-themes-from-css.py`.

### Added

- `Theme.dark` and `Theme.light`, generated into
  `Sources/DesignKitThemes/Themes/Theme+ReadyRoom.swift` by
  `Scripts/generate-themes.py` from the design-system token files vendored
  under `Scripts/token-sources/` (`--sync` refreshes them from a Platform
  checkout and records its commit; `--check` fails when the Swift is stale).
- `Theme.theme(for: Appearance)`.
- `ThemeSelection(appearance:)`.

### Changed

- `Theme.default` is `.dark`; `Theme.all` is `[.dark, .light]`.
- `ThemeSelectionController`'s default selection is `.system`.
- `UserDefaultsThemeSelectionPersistence.loadSelection()` returns nil when no
  appearance is stored (it used to require a family).
- `Tokens.schemaVersion` is `"3.0.0"`.

### Removed

- `Scripts/bootstrap-themes`, the one-time theme-transcription tool. It had
  served its purpose (the 12 themes are maintained as Swift constants) and
  its manifest reached into CodeEditorPlugin via `.package(path:)`,
  contradicting DesignKit's standalone boundary.

## [1.2.0] - 2026-07-13

Additive release. No token values changed; no existing API changed shape.

### Added

- **Semantic foreground contrast API** (`DesignKitThemes`):
  - `LuminanceModel` — makes the luminance policy explicit. Cases:
    `.wcagRelative` (WCAG 2.1, gamma-linearized; the default) and
    `.weightedRGB(red:green:blue:)` (raw non-linearized weighted sum), plus the
    named presets `.rec601` (0.299/0.587/0.114) and `.wcagWeighted`
    (0.2126/0.7152/0.0722 applied to raw channels).
  - `ForegroundContrast.luminance(red:green:blue:model:)` and
    `.prefersDarkForeground(red:green:blue:model:threshold:)` — normalized
    (`0...1`) component overloads for callers that already extracted channels.
  - `Tokens.Color.luminance(_:)`, `Tokens.Color.prefersDarkForeground(_:threshold:)`,
    and the semantic `Tokens.Color.preferredForeground(dark:light:model:threshold:)`.
  - Default policy: WCAG relative luminance, `0.5` cutoff (`>=` prefers dark
    foreground). Consumers reproduce divergent historical behavior by passing an
    explicit `model`/`threshold`.
- **Reverse platform-color conversion** (`DesignKitThemes`):
  - `Tokens.Color(nsColor:)` / `Tokens.Color(uiColor:)` (sRGB-resolved,
    byte-clamped) and `Tokens.Color(_ swiftUIColor:)`. These complement the
    existing forward `NSColor(tokens:)` / `UIColor(tokens:)` / `Color(tokens:)`.

### Changed

- `WCAG.relativeLuminance(_:)` now delegates to
  `ForegroundContrast.luminance(..., model: .wcagRelative)` so the
  gamma-linearization formula is defined once. Behavior is unchanged.
