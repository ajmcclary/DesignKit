import DesignKitTokens
import Foundation

/// Icon colors at five emphasis levels, mirroring `TextLevels`.
/// Maps to Zed's `icon` / `icon.*` keys.
public struct IconLevels: Hashable, Sendable {
    /// Base icon color (Zed `icon`).
    public let base: Tokens.Color
    /// Muted icon color.
    public let muted: Tokens.Color
    /// Placeholder icon color.
    public let placeholder: Tokens.Color
    /// Disabled icon color.
    public let disabled: Tokens.Color
    /// Accent-tinted icon color.
    public let accent: Tokens.Color

    /// Memberwise builder.
    public init(
        base: Tokens.Color,
        muted: Tokens.Color,
        placeholder: Tokens.Color,
        disabled: Tokens.Color,
        accent: Tokens.Color
    ) {
        self.base = base
        self.muted = muted
        self.placeholder = placeholder
        self.disabled = disabled
        self.accent = accent
    }

}
