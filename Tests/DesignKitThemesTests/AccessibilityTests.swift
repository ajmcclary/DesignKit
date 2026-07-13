import DesignKitThemes
import Testing

@Suite("Accessibility resolution")
struct AccessibilityTests {
    @Test("none preferences return the identical theme")
    func nonePreferencesReturnIdenticalTheme() {
        #expect(Theme.lcarsDark.resolved(for: .none) == Theme.lcarsDark)
    }

    @Test("increase contrast hardens text roles across every theme")
    func increaseContrastHardensTextRoles() {
        for theme in Theme.all {
            let hard = theme.resolved(for: AccessibilityPreferences(increaseContrast: true))
            let bg = hard.style.background
            #expect(WCAG.contrastRatio(hard.style.text.base, bg) >= 4.5, "\(theme.name) text.base")
            #expect(WCAG.contrastRatio(hard.style.text.muted, bg) >= 4.5, "\(theme.name) text.muted")
            #expect(
                WCAG.contrastRatio(hard.style.editor.foreground, hard.style.editor.background) >= 4.5,
                "\(theme.name) editor.foreground"
            )
        }
    }

    @Test("reduce transparency makes glass opaque")
    func reduceTransparencyMakesGlassOpaque() {
        let hard = Theme.lcarsDark.resolved(
            for: AccessibilityPreferences(reduceTransparency: true))
        #expect(hard.glass.glass.opacity == 1.0)
        #expect(hard.glass.glass.tint.alpha == 1.0)
    }

    @Test("resolved theme keeps identity")
    func resolvedThemeKeepsIdentity() {
        let hard = Theme.lcarsDark.resolved(for: AccessibilityPreferences(increaseContrast: true))
        #expect(hard.name == Theme.lcarsDark.name)
        #expect(hard.appearance == Theme.lcarsDark.appearance)
    }

    @Test("already-compliant colors pass through unchanged")
    func compliantColorsUntouched() {
        // LCARS High Contrast dark is hand-tuned; hardening should be ~identity
        // for its primary text.
        let theme = Theme.lcarsHighContrastDark
        let hard = theme.resolved(for: AccessibilityPreferences(increaseContrast: true))
        #expect(hard.style.text.base == theme.style.text.base)
    }
}
