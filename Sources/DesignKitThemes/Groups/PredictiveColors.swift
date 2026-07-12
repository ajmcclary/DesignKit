import DesignKitTokens
import Foundation

/// Inline-completion-suggestion colors mapped to Zed's `predictive` /
/// `predictive.*` keys.
public struct PredictiveColors: Hashable, Sendable {
    /// Foreground color of the suggestion text.
    public let base: Tokens.Color
    /// Optional background fill behind the suggestion.
    public let background: Tokens.Color
    /// Border around the suggestion region.
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
