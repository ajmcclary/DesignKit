/// User accessibility preferences that reshape a theme before display.
public struct AccessibilityPreferences: Hashable, Sendable {
    /// Harden text/icon roles to ≥ 4.5:1 against their backgrounds.
    public var increaseContrast: Bool
    /// Replace translucent glass chrome with opaque surfaces.
    public var reduceTransparency: Bool
    /// Signal consumers to drop non-essential animation. DesignKit carries
    /// the flag; honoring it is the consumer's job (durations live in Tokens).
    public var reduceMotion: Bool

    /// All preferences off.
    public static let none = AccessibilityPreferences()

    /// Memberwise init; everything defaults to off.
    public init(
        increaseContrast: Bool = false,
        reduceTransparency: Bool = false,
        reduceMotion: Bool = false
    ) {
        self.increaseContrast = increaseContrast
        self.reduceTransparency = reduceTransparency
        self.reduceMotion = reduceMotion
    }
}
