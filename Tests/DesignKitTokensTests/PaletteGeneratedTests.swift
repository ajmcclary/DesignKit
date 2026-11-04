import Testing
@testable import DesignKitTokens

/// The generated palette (DesignKit 3.0.0, plan Decision 3; Review Focus 3).
@Suite struct PaletteGeneratedTests {
	private typealias A = Tokens.Palette.Accent

	@Test func accentIsTheTokenAccent() {
		#expect(A.dark == Tokens.Color(hex: 0x0A99FF))
		#expect(A.light == Tokens.Color(hex: 0x0078F0))
		#expect(A.contrast == Tokens.Color(hex: 0xFFFFFF))
	}

	@Test func tintsAndStatesDeriveFromTheTokenAccent() {
		#expect(A.tint10Dark == Tokens.Color(hex: 0x0A99FF, alpha: 0.10))
		#expect(A.tint25Dark == Tokens.Color(hex: 0x0A99FF, alpha: 0.25))
		#expect(A.tint10Light == Tokens.Color(hex: 0x0078F0, alpha: 0.10))
		#expect(A.tint25Light == Tokens.Color(hex: 0x0078F0, alpha: 0.25))
		// pressed = each channel × 0.8 (rounded)
		#expect(A.pressedDark == Tokens.Color(hex: 0x087ACC))
		#expect(A.pressedLight == Tokens.Color(hex: 0x0060C0))
		for (hover, base) in [(A.hoverDark, A.dark), (A.hoverLight, A.light)] {
			#expect(Int(hover.red) + Int(hover.green) + Int(hover.blue) < Int(base.red) + Int(base.green) + Int(base.blue))
			#expect(hover.blue > hover.red)
		}
	}

	@Test func statusFollowsTheTokens() {
		typealias S = Tokens.Palette.Status
		#expect(S.successLight == Tokens.Color(hex: 0x299B45))
		#expect(S.warningLight == Tokens.Color(hex: 0xC57300))
		#expect(S.errorLight == Tokens.Color(hex: 0xFF3B30))
		#expect(S.infoLight == Tokens.Color(hex: 0x0078F0))
		#expect(S.infoDark == Tokens.Color(hex: 0x0A99FF))
		#expect(S.successDark == Tokens.Color(hex: 0x30D158))
		#expect(S.cautionDark == Tokens.Color(hex: 0xFFD60A))
	}

	@Test func trafficLights() {
		#expect(Tokens.Palette.TrafficLight.close == Tokens.Color(hex: 0xFF5C60))
		#expect(Tokens.Palette.TrafficLight.minimize == Tokens.Color(hex: 0xFAC800))
		#expect(Tokens.Palette.TrafficLight.zoom == Tokens.Color(hex: 0x35C759))
	}
}
