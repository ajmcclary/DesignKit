import Testing
@testable import DesignKitTokens

@Suite struct SmokeTests {
    @Test func schemaVersionIsSet() {
        #expect(Tokens.schemaVersion == "3.0.0")
    }
}
