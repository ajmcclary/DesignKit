import DesignKitTokens
import Foundation

/// A complete theme — the unit consumers install via `.designTheme(_:)`.
/// Themes are compile-time Swift values; there is no runtime decoding and
/// therefore no fallback path.
public struct Theme: Hashable, Sendable, Identifiable {
    /// Whether a theme is intended for dark or light environments.
    public enum Appearance: String, Sendable, Hashable {
        /// Dark-environment theme.
        case dark
        /// Light-environment theme.
        case light
    }

    /// Stable identifier — currently the theme name.
    public var id: String { name }
    /// Display name (e.g., `"LCARS Dark"`).
    public let name: String
    /// Dark vs. light environment.
    public let appearance: Appearance
    /// Visual surface: semantic color groups, accents, syntax, terminal.
    public let style: ThemeStyle
    /// Liquid Glass / shadow / field knobs.
    public let glass: GlassStyle

    /// Memberwise builder.
    public init(name: String, appearance: Appearance, style: ThemeStyle, glass: GlassStyle) {
        self.name = name
        self.appearance = appearance
        self.style = style
        self.glass = glass
    }
}
