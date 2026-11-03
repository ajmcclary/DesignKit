import Testing
import DesignKitThemes

@Suite struct SmokeTests {
    @Test func reexportsTokens() {
        #expect(Tokens.schemaVersion == "3.0.0")
    }
}
