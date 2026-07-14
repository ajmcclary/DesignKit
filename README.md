# DesignKit

Shared design system for CodeEditorPlugin, DiagramKit, and RepoPrompt.

- `DesignKitTokens` — primitive tokens (spacing, shape, typography, size, opacity, elevation, motion, fallback palette). Foundation-only.
- `DesignKitThemes` — semantic themes (Zed Trek families + Classic), accessibility resolution, SwiftUI/AppKit/UIKit bridges. Re-exports DesignKitTokens.

Swift is the source of truth: theme values were transcribed once from
CodeEditorPlugin's `zed-trek.json` via `Scripts/bootstrap-themes` and are
maintained as Swift constants from now on.

## Usage

```swift
import DesignKitThemes

struct Sidebar: View {
    @Environment(\.designTheme) private var theme

    var body: some View {
        Text("Files")
            .font(.system(size: Tokens.Typography.Size.bodySM))
            .foregroundStyle(Color(tokens: theme.style.text.muted))
            .padding(Tokens.Spacing.md)
            .background(Color(tokens: theme.style.chrome.panelBackground))
    }
}

// At the window root (folds in the system accessibility environment):
ContentView().designTheme(.lcarsDark)
```

Themes: 12 families × light/dark (`Theme.Family.allCases`), default
`Theme.lcarsDark`. Build custom themes from primary colors with
`Theme.derive(name:appearance:background:foreground:accent:)`.

## License

MIT — see [LICENSE](LICENSE).
