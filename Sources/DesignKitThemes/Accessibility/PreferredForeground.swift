import DesignKitTokens
import Foundation

/// Luminance model used when deciding foreground/background contrast.
///
/// Different call sites historically disagreed on how to weigh a color's
/// perceived brightness. This enum makes that choice explicit so a consumer
/// can reproduce its own pinned behavior instead of silently adopting a
/// different formula.
public enum LuminanceModel: Sendable, Hashable {
    /// WCAG 2.1 relative luminance: sRGB channels are gamma-linearized before
    /// weighting by `0.2126 / 0.7152 / 0.0722`. This is the recommended
    /// default for contrast decisions.
    case wcagRelative

    /// A simple weighted sum of the *raw* (non-linearized) sRGB channels,
    /// each in `0...1`. Coefficients are caller-supplied.
    case weightedRGB(red: Double, green: Double, blue: Double)

    /// Rec. 601 luma coefficients (`0.299 / 0.587 / 0.114`) applied to raw
    /// sRGB channels. The classic "perceived brightness" heuristic.
    public static let rec601 = LuminanceModel.weightedRGB(red: 0.299, green: 0.587, blue: 0.114)

    /// WCAG luminance coefficients (`0.2126 / 0.7152 / 0.0722`) applied to the
    /// *raw* (non-gamma-linearized) sRGB channels. Distinct from
    /// ``wcagRelative``, which linearizes first.
    public static let wcagWeighted = LuminanceModel.weightedRGB(red: 0.2126, green: 0.7152, blue: 0.0722)
}

/// Foreground-over-background contrast decisions over sRGB colors.
///
/// The static overloads take normalized components (`0...1`) so callers that
/// already extracted channels from a platform color can route through here
/// without any precision loss from a round-trip through an 8-bit token.
public enum ForegroundContrast {
    /// sRGB → linear-light channel transfer per WCAG 2.1.
    @inlinable
    public static func linearize(_ channel: Double) -> Double {
        channel <= 0.04045 ? channel / 12.92 : pow((channel + 0.055) / 1.055, 2.4)
    }

    /// Luminance of normalized sRGB components (each `0...1`) under `model`.
    /// Alpha is not considered — composite first if you need it.
    public static func luminance(
        red: Double,
        green: Double,
        blue: Double,
        model: LuminanceModel = .wcagRelative
    ) -> Double {
        switch model {
        case .wcagRelative:
            return 0.2126 * linearize(red) + 0.7152 * linearize(green) + 0.0722 * linearize(blue)
        case let .weightedRGB(kr, kg, kb):
            return kr * red + kg * green + kb * blue
        }
    }

    /// Whether dark foreground content is preferred over a background with the
    /// given normalized sRGB components — `true` when the background luminance
    /// is at or above `threshold`.
    public static func prefersDarkForeground(
        red: Double,
        green: Double,
        blue: Double,
        model: LuminanceModel = .wcagRelative,
        threshold: Double = 0.5
    ) -> Bool {
        luminance(red: red, green: green, blue: blue, model: model) >= threshold
    }
}

extension Tokens.Color {
    /// Luminance of this color under `model` (alpha ignored).
    public func luminance(_ model: LuminanceModel = .wcagRelative) -> Double {
        ForegroundContrast.luminance(
            red: Double(red) / 255,
            green: Double(green) / 255,
            blue: Double(blue) / 255,
            model: model
        )
    }

    /// Whether dark foreground content is preferred over this color as a
    /// background — `true` when its luminance is at or above `threshold`.
    public func prefersDarkForeground(
        _ model: LuminanceModel = .wcagRelative,
        threshold: Double = 0.5
    ) -> Bool {
        luminance(model) >= threshold
    }

    /// Semantic foreground selector: returns `dark` when this color reads as a
    /// light background, and `light` otherwise.
    ///
    /// The default policy is WCAG 2.1 relative luminance with a `0.5` cutoff
    /// (a mid-gray `#777777`-ish background flips to dark text). Consumers whose
    /// historical behavior used a different formula or cutoff pass an explicit
    /// `model` and/or `threshold` to reproduce it.
    public func preferredForeground(
        dark: Tokens.Color = Tokens.Color(hex: 0x000000),
        light: Tokens.Color = Tokens.Color(hex: 0xFFFFFF),
        model: LuminanceModel = .wcagRelative,
        threshold: Double = 0.5
    ) -> Tokens.Color {
        prefersDarkForeground(model, threshold: threshold) ? dark : light
    }
}
