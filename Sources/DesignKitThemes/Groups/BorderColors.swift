import DesignKitTokens
import Foundation

/// Border colors mapped to Zed's `border` / `border.*` keys.
public struct BorderColors: Hashable, Sendable {
    /// Default border (Zed `border`).
    public let base: Tokens.Color
    /// Disabled-state border.
    public let disabled: Tokens.Color
    /// Focused border.
    public let focused: Tokens.Color
    /// Selected border.
    public let selected: Tokens.Color
    /// Transparent placeholder border (Zed `border.transparent`).
    public let transparent: Tokens.Color
    /// Variant border for subtle separators.
    public let variant: Tokens.Color

    /// Memberwise builder.
    public init(
        base: Tokens.Color,
        disabled: Tokens.Color,
        focused: Tokens.Color,
        selected: Tokens.Color,
        transparent: Tokens.Color,
        variant: Tokens.Color
    ) {
        self.base = base
        self.disabled = disabled
        self.focused = focused
        self.selected = selected
        self.transparent = transparent
        self.variant = variant
    }

}
