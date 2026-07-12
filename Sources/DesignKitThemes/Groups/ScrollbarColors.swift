import DesignKitTokens
import Foundation

/// Scrollbar colors mapped to Zed's `scrollbar.*` keys.
public struct ScrollbarColors: Hashable, Sendable {
    /// Track fill color.
    public let trackBackground: Tokens.Color
    /// Track border color.
    public let trackBorder: Tokens.Color
    /// Thumb fill color.
    public let thumbBackground: Tokens.Color
    /// Thumb border color.
    public let thumbBorder: Tokens.Color
    /// Thumb fill on hover.
    public let thumbHoverBackground: Tokens.Color

    /// Memberwise builder.
    public init(
        trackBackground: Tokens.Color,
        trackBorder: Tokens.Color,
        thumbBackground: Tokens.Color,
        thumbBorder: Tokens.Color,
        thumbHoverBackground: Tokens.Color
    ) {
        self.trackBackground = trackBackground
        self.trackBorder = trackBorder
        self.thumbBackground = thumbBackground
        self.thumbBorder = thumbBorder
        self.thumbHoverBackground = thumbHoverBackground
    }

}
