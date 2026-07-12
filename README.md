# DesignKit

Shared design system for CodeEditorPlugin, DiagramKit, and RepoPrompt.

- `DesignKitTokens` — primitive tokens (spacing, shape, typography, size, opacity, elevation, motion, fallback palette). Foundation-only.
- `DesignKitThemes` — semantic themes (Zed Trek families + Classic), accessibility resolution, SwiftUI/AppKit/UIKit bridges. Re-exports DesignKitTokens.

Swift is the source of truth: theme values were transcribed once from
CodeEditorPlugin's `zed-trek.json` via `Scripts/bootstrap-themes` and are
maintained as Swift constants from now on.
