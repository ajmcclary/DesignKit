# Changelog

All notable changes to DesignKit are documented here. This project adheres to
[Semantic Versioning](https://semver.org/).

## [1.2.0] - Unreleased

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
