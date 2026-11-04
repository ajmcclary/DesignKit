@testable import DesignKitTokens
import Testing

@Suite("Tokens.Size")
struct SizeTests {
    @Test("icon sizes match CSS source")
    func iconSizes() {
        #expect(Tokens.Size.Icon.indicator == 10)
        #expect(Tokens.Size.Icon.micro == 12)
        #expect(Tokens.Size.Icon.xs == 16)
        #expect(Tokens.Size.Icon.sm == 18)
        #expect(Tokens.Size.Icon.md == 24)
        #expect(Tokens.Size.Icon.lg == 32)
        #expect(Tokens.Size.Icon.xl == 44)
        #expect(Tokens.Size.Icon.xxl == 48)
    }

    @Test("touch sizes meet HIG minimum (44pt)")
    func touchSizes() {
        #expect(Tokens.Size.Touch.min == 44)
        #expect(Tokens.Size.Touch.comfortable == 48)
        #expect(Tokens.Size.Touch.row == 52)
        #expect(Tokens.Size.Touch.large == 56)
        #expect(Tokens.Size.Touch.min >= 44, "iOS HIG minimum tappable target is 44pt")
    }

    @Test("avatar sizes")
    func avatarSizes() {
        #expect(Tokens.Size.Avatar.xs == 24)
        #expect(Tokens.Size.Avatar.sm == 32)
        #expect(Tokens.Size.Avatar.md == 40)
        #expect(Tokens.Size.Avatar.lg == 48)
        #expect(Tokens.Size.Avatar.xl == 64)
    }

    @Test("layout metrics are the design system's layout-* tokens")
    func layoutMetrics() {
        #expect(Tokens.Size.Layout.windowWidth == 1280)
        #expect(Tokens.Size.Layout.windowHeight == 820)
        #expect(Tokens.Size.Layout.windowMinWidth == 960)
        #expect(Tokens.Size.Layout.windowMinHeight == 600)
        #expect(Tokens.Size.Layout.sidebarMin == 200)
        #expect(Tokens.Size.Layout.sidebarIdeal == 220)
        #expect(Tokens.Size.Layout.sidebarMax == 300)
        #expect(Tokens.Size.Layout.detailMin == 700)
        #expect(Tokens.Size.Layout.inspectorMin == 280)
        #expect(Tokens.Size.Layout.inspectorIdeal == 300)
        #expect(Tokens.Size.Layout.inspectorMax == 420)
        #expect(Tokens.Size.Layout.inspectorStep == 16)
    }

    @Test("macOS pointer-target minimum")
    func macOSTouchMinimum() {
        #expect(Tokens.Size.Touch.minimumMacOS == 28)
    }

    @Test("control sizing matches CSS source")
    func controlSizes() {
        #expect(Tokens.Size.Control.height == 32)
        #expect(Tokens.Size.Control.heightCompact == 27)
        #expect(Tokens.Size.Control.heightSmall == 24)
        #expect(Tokens.Size.Control.row == 34)
        #expect(Tokens.Size.Control.rowCompact == 28)
        #expect(Tokens.Size.Control.chip == 26)
        #expect(Tokens.Size.Control.switchWidth == 38)
        #expect(Tokens.Size.Control.switchHeight == 22)
        #expect(Tokens.Size.Control.switchKnob == 18)
        #expect(Tokens.Size.Control.accentBar == 2)
        #expect(Tokens.Size.Control.titleBar == 38)
        #expect(Tokens.Size.Control.tabStrip == 36)
        #expect(Tokens.Size.Control.statusBar == 28)
    }
}
