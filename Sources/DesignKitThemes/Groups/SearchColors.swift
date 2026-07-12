import DesignKitTokens
import Foundation

/// Search-result colors mapped to Zed's `search.*` keys.
public struct SearchColors: Hashable, Sendable {
    /// Background fill behind matched text.
    public let matchBackground: Tokens.Color

    /// Memberwise builder.
    public init(matchBackground: Tokens.Color) {
        self.matchBackground = matchBackground
    }
}
