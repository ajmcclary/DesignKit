import DesignKitThemes
import Testing

/// Public-API stability pin: references every load-bearing entry point so a
/// removal or rename is a compile failure here before it breaks a consumer.
@Suite("Public API conformance")
struct ConformanceTests {
    @Test("public surface exists")
    func publicSurfaceExists() {
        // Tokens layer
        _ = Tokens.schemaVersion
        _ = Tokens.Spacing.md
        _ = Tokens.Shape.radiusMD
        _ = Tokens.Typography.Size.bodySM
        _ = Tokens.Size.Icon.md
        _ = Tokens.Size.Layout.sidebarWidth
        _ = Tokens.Size.Touch.minimumMacOS
        _ = Tokens.Opacity.glassFill
        _ = Tokens.Elevation.popover(.dark)
        _ = Tokens.Palette.Accent.dark
        _ = Tokens.Color(hex: 0x000000).mixed(with: Tokens.Color(hex: 0xFFFFFF), amount: 0.5)
        // Themes layer
        _ = Theme.default
        _ = Theme.all
        _ = Theme.Family.allCases
        _ = Theme.lcarsDark.resolveSyntaxColor(for: "keyword")
        _ = Theme.lcarsDark.resolveSyntaxStyle(for: "keyword")
        _ = Theme.lcarsDark.resolved(for: .none)
        _ = Theme.derive(
            name: "Pin", appearance: .dark,
            background: Tokens.Color(hex: 0x000000),
            foreground: Tokens.Color(hex: 0xFFFFFF),
            accent: Tokens.Color(hex: 0x0A84FF)
        )
        _ = WCAG.contrastRatio(Tokens.Color(hex: 0x000000), Tokens.Color(hex: 0xFFFFFF))
        _ = AccessibilityPreferences(increaseContrast: true, reduceTransparency: true, reduceMotion: true)
        #expect(Bool(true))
    }
}
