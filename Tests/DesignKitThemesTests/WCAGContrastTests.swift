import DesignKitThemes
import Testing

@Suite("WCAG contrast math")
struct WCAGContrastTests {
    @Test("black on white is 21:1")
    func blackOnWhiteIs21() {
        let r = WCAG.contrastRatio(Tokens.Color(hex: 0x000000), Tokens.Color(hex: 0xFFFFFF))
        #expect(abs(r - 21.0) < 0.01)
    }

    @Test("identical colors are 1:1")
    func identicalColorsAre1() {
        let c = Tokens.Color(hex: 0x123456)
        #expect(abs(WCAG.contrastRatio(c, c) - 1.0) < 0.0001)
    }

    @Test("ratio is symmetric")
    func ratioIsSymmetric() {
        let a = Tokens.Color(hex: 0x0A84FF)
        let b = Tokens.Color(hex: 0x020204)
        #expect(abs(WCAG.contrastRatio(a, b) - WCAG.contrastRatio(b, a)) < 0.0001)
    }

    @Test("known AA boundary pair")
    func knownPair() {
        // #767676 on #FFFFFF is the canonical 4.54:1 AA boundary example.
        let r = WCAG.contrastRatio(Tokens.Color(hex: 0x767676), Tokens.Color(hex: 0xFFFFFF))
        #expect(abs(r - 4.54) < 0.02)
    }
}
