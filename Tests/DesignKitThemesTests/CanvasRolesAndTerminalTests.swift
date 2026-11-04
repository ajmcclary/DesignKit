import DesignKitTokens
import Testing
@testable import DesignKitThemes

/// DesignKit 3.0.0: light terminal colours from the light accents (plan
/// Decision 4) and the two canvas roles (Decision 5; Review Focus 5).
@Suite struct CanvasRolesAndTerminalTests {
	@Test func lightTerminalUsesLightAccents() throws {
		let light = try #require(Theme.light.style.terminal?.ansi)
		#expect(light.red == Tokens.Color(hex: 0xFF383C))
		#expect(light.green == Tokens.Color(hex: 0x34C759))
		#expect(light.blue == Tokens.Color(hex: 0x1E6EF4))
		#expect(light.magenta == Tokens.Color(hex: 0xCB30E0))
		#expect(light.black == Tokens.Color(hex: 0x000000))
		#expect(light.white == Tokens.Color(hex: 0xFFFFFF))
		#expect(light.brightRed == light.red)
		let dark = try #require(Theme.dark.style.terminal?.ansi)
		#expect(dark.red == Tokens.Color(hex: 0xF44747), "dark keeps ansi-*")
	}

	@Test func canvasRoles() {
		#expect(Theme.dark.style.chrome.tertiaryBackground == Tokens.Color(hex: 0x2E2E30))
		#expect(Theme.light.style.chrome.tertiaryBackground == Tokens.Color(hex: 0xECECEE))
		#expect(Theme.dark.style.borders.strong == Tokens.Color(hex: 0xFFFFFF, alpha: 0.35))
		#expect(Theme.light.style.borders.strong == Tokens.Color(hex: 0x000000, alpha: 0.43))
	}

	@Test func newRolesSurviveDeriveAndResolve() {
		let derived = Theme.derive(
			name: "Derived", appearance: .dark,
			background: Tokens.Color(hex: 0x101010), foreground: Tokens.Color(hex: 0xF0F0F0), accent: Tokens.Color(hex: 0x0A99FF)
		)
		#expect(derived.style.chrome.tertiaryBackground != derived.style.background)
		#expect(derived.style.borders.strong != derived.style.borders.base)
		for theme in [Theme.dark, Theme.light, derived] {
			let resolved = theme.resolved(for: AccessibilityPreferences(increaseContrast: true))
			#expect(resolved.style.chrome.tertiaryBackground == theme.style.chrome.tertiaryBackground)
			#expect(resolved.style.borders.strong.alpha >= theme.style.borders.strong.alpha)
		}
	}
}
