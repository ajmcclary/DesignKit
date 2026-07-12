import Testing
import DesignKitThemes

@Suite struct SmokeTests {
    @Test func reexportsTokens() {
        #expect(Tokens.schemaVersion == "2.0.0")
    }
}
