import DesignKitTokens
import Foundation

/// Inlay-hint colors mapped to Zed's `hint` / `hint.*` keys.
public struct HintColors: Hashable, Sendable {
    /// Foreground color of inlay hints.
    public let base: Tokens.Color
    /// Background fill behind hints.
    public let background: Tokens.Color
    /// Border around hint region.
    public let border: Tokens.Color

    /// Memberwise builder.
    public init(
        base: Tokens.Color,
        background: Tokens.Color,
        border: Tokens.Color
    ) {
        self.base = base
        self.background = background
        self.border = border
    }

}
