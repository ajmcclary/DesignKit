# DesignKit

Shared design system for CodeEditorKit, DiagramKit, and RepoPrompt.

- `DesignKitTokens` — primitive tokens (spacing, shape, typography, size, opacity, elevation, motion, fallback palette). Foundation-only.
- `DesignKitThemes` — the semantic theme pair (`Theme.dark`, `Theme.light`), accessibility resolution, SwiftUI/AppKit/UIKit bridges. Re-exports DesignKitTokens.
- `DesignKitThemeSelection` / `DesignKitThemeSelectionUI` — the user's appearance preference (System / Light / Dark), its persistence and controller, and the SwiftUI installation modifier.

The theme values are generated from the Apple Systems design system's token
files (`semantic.json`, `tokens.json`, `type-scales.json`), vendored under
`Scripts/token-sources/` with the design-system commit recorded in
`SOURCE.md` (plus `platform.css` for the layout values it alone carries). The
generated outputs are committed and never edited by hand:

- `Sources/DesignKitThemes/Themes/Theme+ReadyRoom.swift` — the dark and light themes;
- `Sources/DesignKitTokens/Size+Layout.swift` — window and pane metrics (`layout-*`);
- `Sources/DesignKitTokens/Tokens+Generated.swift` — spacing, radii and strokes,
  type sizes / weights / line heights / tracking / font stacks, and opacities.

The hand-written token files hold only the enum namespaces and the constants the
design system has no token for.

- Refresh from a local Platform checkout:
  `python3 -I Scripts/generate-themes.py --sync --design-system <Platform>/projects/design-system`
- Verify the committed Swift matches the vendored sources (CI runs this):
  `python3 -I Scripts/generate-themes.py --check`
- The role-to-token mapping lives in `render()` inside the generator, and the
  scalar mapping in `SCALAR_MAP`; change it there, regenerate, and review the
  Swift diff.

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
ContentView().designTheme(.dark)
```

Themes: `Theme.all == [.dark, .light]`, `Theme.default == .dark`,
`Theme.theme(for:)` picks by appearance. Build custom themes from primary
colors with `Theme.derive(name:appearance:background:foreground:accent:)`.

## License

MIT — see [LICENSE](LICENSE).
