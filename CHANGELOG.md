# Changelog

All notable changes to DesignKit are documented here. This project adheres to
[Semantic Versioning](https://semver.org/).

## [Unreleased]

## [3.0.1] - 2026-11-09

### Fixed

- Measure displayed foreground contrast after alpha compositing. Increase
  Contrast now hardens translucent roles, including predictive text.
- Map readable line numbers, placeholders, ghost text and ignored-file names
  to the secondary foreground token. Terminal slots clear displayed contrast
  on both backgrounds; bright slots remain distinct.
- Use the control accent for SwiftUI tint and the matching light ANSI palette
  for derived light themes. Remove retired family preferences on migration.
- Reject ambiguous, conflicting and responsive CSS layout overrides in the
  token generator instead of silently changing Swift metrics.


## [3.0.0] - 2026-11-04

The final 3.0.0: every DesignKit token value the design system defines is now
generated from the vendored token files.

### Added

- `Tokens+Generated.swift`: `Tokens.Spacing`, `Tokens.Shape` (radii, strokes),
  `Tokens.Typography` (sizes, weights, line heights, `Tracking.caps`, font stacks)
  and `Tokens.Opacity` are generated from `sp-*`, `radius-*`, `stroke-*`, `fs-*`,
  `fw-*`, `lh-*`, `tracking-caps`, `type.families` and `op-*`. Constants with no
  token (`Typography.Tracking.tight`, `Tokens.Size.*`) stay hand-written.
- `Palette+Generated.swift`: `Tokens.Palette` (accent, hover, pressed, tints,
  status, traffic lights, ANSI) is generated. The generator parses `oklch()`
  (CSS Color 4) for `accent-hover`.
- `ChromeColors.tertiaryBackground` (`bg-tertiary`) and `BorderColors.strong`
  (`border-strong`), with defaulted initializer parameters (they default to
  `surfaceBackground` and `base`).
- `--check` covers all four generated files.

### Changed

- The accent is the design system's: `Palette.Accent.dark` #0A99FF (was #0A84FF),
  `.light` #0078F0 (was #007AFF); tints use it; `hover*` come from `accent-hover`
  (#0784DE / #0067D1); `pressed*` are the accent × 0.8 (#087ACC / #0060C0).
- `Palette.Status`: `infoDark` #0A99FF, `successLight` #299B45, `warningLight`
  #C57300, `infoLight` #0078F0.
- `Palette.TrafficLight`: #FF5C60 / #FAC800 / #35C759.
- Font stacks follow `type.families` (SF Pro names first; the mono stack is
  `SF Mono, ui-monospace, Menlo, Consolas, monospace`).
- The light theme's terminal ANSI slots come from the design system's light
  accents (`accents-*`, `grays-black-2` / `grays-white-2`); the dark theme keeps
  `ansi-*`.

### Removed

- `Tokens.Size.Layout.sidebarWidth` and `.inspectorWidth` (deprecated in beta.3).

## [3.0.0-beta.3] - 2026-11-03

Additive: layout metrics generated from the design system.

### Added

- `Tokens.Size.Layout` is now generated (`Sources/DesignKitTokens/Size+Layout.swift`)
  from the design system's `layout-*` tokens: window size and minimum, sidebar
  min/ideal/max (200/220/300), detail minimum (700), inspector min/ideal/max/step
  (280/300/420/16), popover and sheet sizes. `generate-themes.py` vendors
  `platform.css` for the two layout tokens it carries (inspector ideal and step),
  and `--check` covers both generated files.

### Deprecated

- `Tokens.Size.Layout.sidebarWidth` (236) and `.inspectorWidth` (328); removed in 3.0.0.

## [3.0.0-beta.2] - 2026-11-03

Value-only change to the generated mapping.

### Changed

- `editor.activeLineBackground` is now the neutral `fill-tertiary` and
  `editor.highlightedLineBackground` is `fill-secondary`; both were
  accent-tinted and the current line was indistinguishable from the text
  selection (`players[0].selection`, still `row-selected`).

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
