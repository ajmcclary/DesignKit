@testable import DesignKitTokens
import Testing

@Suite("Tokens.Color mixing")
struct MixingTests {
    @Test("mix at zero returns self")
    func mixAtZeroReturnsSelf() {
        let a = Tokens.Color(hex: 0x102030)
        let b = Tokens.Color(hex: 0xFFFFFF)
        #expect(a.mixed(with: b, amount: 0) == a)
    }

    @Test("mix at one returns other")
    func mixAtOneReturnsOther() {
        let a = Tokens.Color(hex: 0x102030)
        let b = Tokens.Color(hex: 0xFFFFFF)
        #expect(a.mixed(with: b, amount: 1) == b)
    }

    @Test("mix at half is the linear midpoint")
    func mixAtHalfIsLinearMidpoint() {
        let a = Tokens.Color(hex: 0x000000)
        let b = Tokens.Color(hex: 0xFF0000)
        let mid = a.mixed(with: b, amount: 0.5)
        #expect(mid.red == 128)   // round(0 + 255 * 0.5) = 128
        #expect(mid.green == 0)
        #expect(mid.blue == 0)
    }

    @Test("mix lerps alpha")
    func mixLerpsAlpha() {
        let a = Tokens.Color(hex: 0x000000, alpha: 0.0)
        let b = Tokens.Color(hex: 0x000000, alpha: 1.0)
        #expect(abs(a.mixed(with: b, amount: 0.25).alpha - 0.25) < 0.0001)
    }

    @Test("amount is clamped to 0...1")
    func amountIsClamped() {
        let a = Tokens.Color(hex: 0x102030)
        let b = Tokens.Color(hex: 0xFFFFFF)
        #expect(a.mixed(with: b, amount: -1) == a)
        #expect(a.mixed(with: b, amount: 2) == b)
    }
}
