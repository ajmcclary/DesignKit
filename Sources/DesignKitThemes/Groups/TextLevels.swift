import DesignKitTokens
import Foundation

/// Text colors at five emphasis levels, mapped to Zed's `text` / `text.*`
/// role names.
public struct TextLevels: Hashable, Sendable {
    /// Base text color (Zed `text`).
    public let base: Tokens.Color
    /// Muted/secondary text.
    public let muted: Tokens.Color
    /// Placeholder text in fields.
    public let placeholder: Tokens.Color
    /// Disabled text.
    public let disabled: Tokens.Color
    /// Accent-tinted text (Zed `text.accent`).
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
