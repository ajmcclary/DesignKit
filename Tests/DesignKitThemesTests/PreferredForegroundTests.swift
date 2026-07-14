@testable import DesignKitThemes
import DesignKitTokens
import Testing
import Foundation

#if canImport(AppKit)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif

@Suite("Preferred foreground & luminance models")
struct PreferredForegroundTests {

    // MARK: - Formula pins

    @Test("wcagRelative matches WCAG.relativeLuminance")
    func wcagRelativeMatchesWCAG() {
        let colors: [Tokens.Color] = [
            Tokens.Color(hex: 0x000000),
            Tokens.Color(hex: 0xFFFFFF),
            Tokens.Color(hex: 0x0A84FF),
            Tokens.Color(hex: 0x777777),
            Tokens.Color(hex: 0xFF9933),
        ]
        for c in colors {
            #expect(c.luminance(.wcagRelative) == WCAG.relativeLuminance(c))
        }
    }

    @Test("wcagRelative gamma-linearizes: black 0, white 1")
    func wcagRelativeEndpoints() {
        #expect(Tokens.Color(hex: 0x000000).luminance(.wcagRelative) == 0.0)
        #expect(abs(Tokens.Color(hex: 0xFFFFFF).luminance(.wcagRelative) - 1.0) < 1e-12)
    }

    @Test("weightedRGB is a raw (non-linearized) weighted sum")
    func weightedRGBRaw() {
        // rec601 mid-gray 0x808080 -> 128/255 exactly, no gamma.
        let g = Double(0x80) / 255.0
        let mid = Tokens.Color(hex: 0x808080)
        #expect(abs(mid.luminance(.rec601) - g) < 1e-12)
        #expect(abs(mid.luminance(.wcagWeighted) - g) < 1e-12)
        // Raw weighted differs from gamma-linearized for the same color.
        #expect(mid.luminance(.wcagWeighted) != mid.luminance(.wcagRelative))
    }

    @Test("named model coefficients")
    func namedCoefficients() {
        #expect(LuminanceModel.rec601 == .weightedRGB(red: 0.299, green: 0.587, blue: 0.114))
        #expect(LuminanceModel.wcagWeighted == .weightedRGB(red: 0.2126, green: 0.7152, blue: 0.0722))
    }

    // MARK: - Static raw-component API equals the Tokens.Color API

    @Test("static luminance equals Tokens.Color.luminance for byte-exact colors")
    func staticEqualsToken() {
        let c = Tokens.Color(hex: 0x3E7A2B)
        let r = Double(0x3E) / 255, g = Double(0x7A) / 255, b = Double(0x2B) / 255
        #expect(ForegroundContrast.luminance(red: r, green: g, blue: b, model: .wcagWeighted)
            == c.luminance(.wcagWeighted))
    }

    // MARK: - Threshold semantics

    @Test("prefersDarkForeground: default WCAG 0.5 cutoff")
    func defaultCutoff() {
        #expect(Tokens.Color(hex: 0xFFFFFF).prefersDarkForeground())   // white bg -> dark text
        #expect(!Tokens.Color(hex: 0x000000).prefersDarkForeground())  // black bg -> light text
    }

    @Test("threshold boundary is inclusive (>=)")
    func inclusiveBoundary() {
        // Construct a color whose weightedRGB luminance is exactly 0.6.
        // 0.2126*r = 0.6 with g=b=0 -> r = 0.6/0.2126 ~ not byte-exact, so use
        // a direct component check instead.
        #expect(ForegroundContrast.prefersDarkForeground(
            red: 0.6, green: 0.6, blue: 0.6, model: .weightedRGB(red: 1, green: 0, blue: 0), threshold: 0.6))
        #expect(!ForegroundContrast.prefersDarkForeground(
            red: 0.59, green: 0.59, blue: 0.59, model: .weightedRGB(red: 1, green: 0, blue: 0), threshold: 0.6))
    }

    // MARK: - Characterization: reproduce consumer thresholds

    @Test("DiagramStudio swatch policy: wcagWeighted @ 0.6")
    func diagramStudioSwatchPolicy() {
        // Reproduces DSColorUtilities.dsIsLightSwatch:
        //   (0.2126*r + 0.7152*g + 0.0722*b) >= 0.6
        func legacy(_ c: Tokens.Color) -> Bool {
            let r = Double(c.red) / 255, g = Double(c.green) / 255, b = Double(c.blue) / 255
            return (0.2126 * r + 0.7152 * g + 0.0722 * b) >= 0.6
        }
        let palette: [Tokens.Color] = [
            Tokens.Color(hex: 0x080A0F), Tokens.Color(hex: 0xFFCC66), Tokens.Color(hex: 0xFF9933),
            Tokens.Color(hex: 0xFFFCF4), Tokens.Color(hex: 0x8B5D1A), Tokens.Color(hex: 0x7EC8DE),
            Tokens.Color(hex: 0xC7E9F1), Tokens.Color(hex: 0xB5A7FF), Tokens.Color(hex: 0x4EE6A6),
            Tokens.Color(hex: 0xFFFFFF), Tokens.Color(hex: 0x000000), Tokens.Color(hex: 0x808080),
        ]
        for c in palette {
            #expect(c.prefersDarkForeground(.wcagWeighted, threshold: 0.6) == legacy(c))
        }
    }

    @Test("legacy simple-luma policy: rec601 @ 0.5")
    func rec601Policy() {
        // Reproduces the retired BMColor.isLight / isDarkForContrast style:
        //   0.299*r + 0.587*g + 0.114*b  compared to 0.5
        func legacyLight(_ c: Tokens.Color) -> Bool {
            let r = Double(c.red) / 255, g = Double(c.green) / 255, b = Double(c.blue) / 255
            return (0.299 * r + 0.587 * g + 0.114 * b) > 0.5
        }
        for hex: UInt32 in [0x000000, 0xFFFFFF, 0x808080, 0x0A84FF, 0xFF9933, 0x2ECC71] {
            let c = Tokens.Color(hex: hex)
            // isLight (> 0.5) is the negation-ish of prefersDarkForeground (>= 0.5);
            // compare on the light side to avoid the boundary tie.
            #expect((c.luminance(.rec601) > 0.5) == legacyLight(c))
        }
    }

    // MARK: - Semantic selector

    @Test("preferredForeground returns dark on light bg, light on dark bg")
    func semanticSelector() {
        let dark = Tokens.Color(hex: 0x111111)
        let light = Tokens.Color(hex: 0xEEEEEE)
        #expect(Tokens.Color(hex: 0xFFFFFF).preferredForeground(dark: dark, light: light) == dark)
        #expect(Tokens.Color(hex: 0x000000).preferredForeground(dark: dark, light: light) == light)
    }

    // MARK: - Platform round-trip conversion

    #if canImport(AppKit)
    @Test("NSColor round-trips through Tokens.Color for byte-exact sRGB colors")
    func nsColorRoundTrip() {
        for hex: UInt32 in [0x000000, 0xFFFFFF, 0x0A84FF, 0xFF9933, 0x123456] {
            let token = Tokens.Color(hex: hex)
            let ns = NSColor(tokens: token)
            let back = Tokens.Color(nsColor: ns)
            #expect(back == token)
        }
    }
    #endif

    #if canImport(UIKit)
    @Test("UIColor round-trips through Tokens.Color for byte-exact sRGB colors")
    func uiColorRoundTrip() {
        for hex: UInt32 in [0x000000, 0xFFFFFF, 0x0A84FF, 0xFF9933, 0x123456] {
            let token = Tokens.Color(hex: hex)
            let ui = UIColor(tokens: token)
            let back = Tokens.Color(uiColor: ui)
            #expect(back == token)
        }
    }
    #endif

    @Test("reverse conversion clamps out-of-gamut components to 0...255")
    func reverseClamp() {
        // A value below 0 / above 1 must not trap; _byte clamps.
        #expect(Tokens.Color._byte(-0.5) == 0)
        #expect(Tokens.Color._byte(1.5) == 255)
        #expect(Tokens.Color._byte(0.5) == 128)
    }
}
