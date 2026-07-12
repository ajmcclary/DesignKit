import DesignKitTokens
import Foundation

/// Per-token syntax styling, keyed under `style.syntax` in Zed JSON.
///
/// Zed allows entries that have only `font_style` or only `font_weight`
/// (e.g., `emphasis: { font_style: italic }`), so `color` is optional.
/// Weights follow the CSS scale (100–900).
public struct SyntaxStyle: Hashable, Sendable {
    /// CSS-style font style names supported by Zed.
    public enum FontStyle: String, Sendable, Hashable {
        case normal
        case italic
    }

    /// Foreground color, or nil for entries that only override style/weight.
    public let color: Tokens.Color?
    /// Optional background highlight (rare in Zed JSONs).
    public let backgroundColor: Tokens.Color?
    /// CSS-style numeric weight (100–900) or nil to inherit.
    public let fontWeight: Int?
    /// Italic vs. normal, or nil to inherit.
    public let fontStyle: FontStyle?

    /// Memberwise builder.
    public init(
        color: Tokens.Color? = nil,
        backgroundColor: Tokens.Color? = nil,
        fontWeight: Int? = nil,
        fontStyle: FontStyle? = nil
    ) {
        self.color = color
        self.backgroundColor = backgroundColor
        self.fontWeight = fontWeight
        self.fontStyle = fontStyle
    }

}
