import DesignKitThemes
import Testing
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(AppKit)
import AppKit
#endif

@Suite("Framework bridges")
struct BridgeTests {
    #if canImport(SwiftUI)
    @Test("SwiftUI Color bridges from tokens")
    func swiftUIColorBridges() {
        _ = SwiftUI.Color(tokens: Tokens.Color(hex: 0x0A84FF))
    }

    @Test("environment default is Theme.default")
    @MainActor
    func environmentDefaultIsDefaultTheme() {
        #expect(EnvironmentValues().designTheme == Theme.default)
    }

    @Test("easing converts to a SwiftUI animation")
    func easingConverts() {
        _ = Animation.timingCurve(easing: Tokens.Animation.easeOutSoft, duration: .milliseconds(200))
    }
    #endif

    #if canImport(AppKit)
    @Test("NSColor bridge preserves channels")
    func nsColorBridgePreservesChannels() {
        let ns = NSColor(tokens: Tokens.Color(hex: 0xFF9933))
        let converted = ns.usingColorSpace(.sRGB)
        #expect(converted != nil)
        if let converted {
            #expect(abs(converted.redComponent - 1.0) < 0.005)
            #expect(abs(converted.greenComponent - Double(0x99) / 255.0) < 0.005)
            #expect(abs(converted.blueComponent - Double(0x33) / 255.0) < 0.005)
        }
    }
    #endif
}
