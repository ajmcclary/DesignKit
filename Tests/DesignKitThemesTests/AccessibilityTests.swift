import DesignKitThemes
import Testing

@Suite("Accessibility resolution")
struct AccessibilityTests {
    @Test("none preferences return the identical theme")
    func nonePreferencesReturnIdenticalTheme() {
        #expect(Theme.dark.resolved(for: .none) == Theme.dark)
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
        let hard = Theme.dark.resolved(
            for: AccessibilityPreferences(reduceTransparency: true))
        #expect(hard.glass.glass.opacity == 1.0)
        #expect(hard.glass.glass.tint.alpha == 1.0)
    }

    @Test("resolved theme keeps identity")
    func resolvedThemeKeepsIdentity() {
        let hard = Theme.dark.resolved(for: AccessibilityPreferences(increaseContrast: true))
        #expect(hard.name == Theme.dark.name)
        #expect(hard.appearance == Theme.dark.appearance)
    }

    @Test("hardening is idempotent")
    func hardeningIsIdempotent() {
        let prefs = AccessibilityPreferences(increaseContrast: true)
        let hard = Theme.dark.resolved(for: prefs)
        #expect(hard.resolved(for: prefs) == hard)
    }
}
