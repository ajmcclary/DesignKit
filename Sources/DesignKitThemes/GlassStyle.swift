import DesignKitTokens
import Foundation

/// Liquid Glass / shadow / field styling that accompanies a theme's color
/// surface. Formerly the `platform.*` extension of the retired Zed JSON
/// format; can be synthesized from a `ThemeStyle` via `derived(from:appearance:)`.
public struct GlassStyle: Hashable, Sendable {
    /// Liquid Glass tint + opacity.
    public struct Glass: Hashable, Sendable {
        /// Tint color blended into the glass material.
        public let tint: Tokens.Color
        /// Glass opacity (0–1).
        public let opacity: Double

        /// Memberwise builder.
        public init(tint: Tokens.Color, opacity: Double) {
            self.tint = tint
            self.opacity = opacity
        }
    }

    /// One drop-shadow specification (color + offset + blur).
    public struct Shadow: Hashable, Sendable {
        /// Shadow color (typically translucent black).
        public let color: Tokens.Color
        /// Gaussian blur radius in points.
        public let blur: Double
        /// Horizontal offset in points.
        public let xOffset: Double
        /// Vertical offset in points.
        public let yOffset: Double

        /// Memberwise builder.
        public init(color: Tokens.Color, blur: Double, xOffset: Double, yOffset: Double) {
            self.color = color
            self.blur = blur
            self.xOffset = xOffset
            self.yOffset = yOffset
        }

    }

    /// Container holding the named shadows the chrome consumes.
    public struct Shadows: Hashable, Sendable {
        /// Popover-class drop shadow used for completion menus, command
        /// palette, tooltips.
        public let popover: Shadow

        /// Memberwise builder.
        public init(popover: Shadow) { self.popover = popover }
    }

    /// Field-style colors for the chrome's text inputs.
    public struct Field: Hashable, Sendable {
        /// Resting fill.
        public let fill: Tokens.Color
        /// Resting border.
        public let border: Tokens.Color
        /// Border when the field has focus.
        public let focusedBorder: Tokens.Color

        /// Memberwise builder.
        public init(fill: Tokens.Color, border: Tokens.Color, focusedBorder: Tokens.Color) {
            self.fill = fill
            self.border = border
            self.focusedBorder = focusedBorder
        }

    }

    /// Liquid Glass settings.
    public let glass: Glass
    /// Named drop-shadow specifications.
    public let shadows: Shadows
    /// Text-field styling.
    public let field: Field
    /// Text/icon color on an `accent-1` fill (primary button). CSS `--on-accent`.
    public let onAccent: Tokens.Color
    /// Text/icon color on a `diag-error` fill (destructive button). CSS `--on-danger`.
    public let onDanger: Tokens.Color

    /// Memberwise builder.
    public init(
        glass: Glass,
        shadows: Shadows,
        field: Field,
        onAccent: Tokens.Color,
        onDanger: Tokens.Color
    ) {
        self.glass = glass
        self.shadows = shadows
        self.field = field
        self.onAccent = onAccent
        self.onDanger = onDanger
    }
}
