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

    /// Render a translucent foreground over an opaque backing surface in sRGB.
    public static func composited(_ foreground: Tokens.Color, over background: Tokens.Color) -> Tokens.Color {
        let alpha = min(max(foreground.alpha, 0), 1)
        func channel(_ fg: UInt8, _ bg: UInt8) -> UInt8 {
            UInt8((Double(fg) * alpha + Double(bg) * (1 - alpha)).rounded())
        }
        return Tokens.Color(red: channel(foreground.red, background.red),
                            green: channel(foreground.green, background.green),
                            blue: channel(foreground.blue, background.blue))
    }

    /// Contrast as displayed: composite the foreground before measuring luminance.
    public static func displayedContrast(_ foreground: Tokens.Color, on background: Tokens.Color) -> Double {
        contrastRatio(composited(foreground, over: background), background)
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
