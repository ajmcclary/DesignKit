import DesignKitTokens
import Foundation

/// WCAG 2.1 contrast math over sRGB token colors.
public enum WCAG {
    /// Relative luminance per WCAG 2.1.
    public static func relativeLuminance(_ color: Tokens.Color) -> Double {
        func channel(_ byte: UInt8) -> Double {
            let c = Double(byte) / 255.0
            return c <= 0.04045 ? c / 12.92 : pow((c + 0.055) / 1.055, 2.4)
        }
        return 0.2126 * channel(color.red)
            + 0.7152 * channel(color.green)
            + 0.0722 * channel(color.blue)
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
