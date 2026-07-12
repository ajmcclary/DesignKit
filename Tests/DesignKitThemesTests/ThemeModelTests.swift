import DesignKitThemes
import Testing

@Suite("Theme model")
struct ThemeModelTests {
    @Test("theme is identifiable by name")
    func themeIsIdentifiableByName() {
        #expect(ThemeFixtures.makeMinimalTheme().id == "Minimal")
    }

    @Test("theme is hashable, equatable, sendable")
    func themeIsHashableAndSendable() {
        let a = ThemeFixtures.makeMinimalTheme()
        let b = ThemeFixtures.makeMinimalTheme()
        #expect(a == b)
        #expect(a.hashValue == b.hashValue)
        let sendable: any Sendable = a
        _ = sendable
    }

    @Test("derived glass style synthesizes tint from editor background")
    func derivedGlassStyle() {
        let theme = ThemeFixtures.makeMinimalTheme()
        #expect(theme.glass.glass.tint.alpha == 0.12)
        #expect(theme.glass.glass.tint.red == theme.style.editor.background.red)
        #expect(theme.glass.field.focusedBorder == theme.style.borders.focused)
    }
}
