import DesignKitTokens
import Foundation

/// WCAG 2.1 contrast math over sRGB token colors.
public enum WCAG {
    /// Relative luminance per WCAG 2.1.
    ///
    /// Thin alias over ``ForegroundContrast/luminance(red:green:blue:model:)``
    /// with ``LuminanceModel/wcagRelative`` so the gamma-linearization formula
    /// lives in exactly one place.
    public static func relativeLuminance(_ color: Tokens.Color) -> Double {
        color.luminance(.wcagRelative)
    }

    /// Contrast ratio (1...21), symmetric in its arguments. Alpha is ignored:
    /// callers compare composited/opaque roles.
    public static func contrastRatio(_ a: Tokens.Color, _ b: Tokens.Color) -> Double {
        let la = relativeLuminance(a)
        let lb = relativeLuminance(b)
        let (hi, lo) = la >= lb ? (la, lb) : (lb, la)
        return (hi + 0.05) / (lo + 0.05)
    }
}
