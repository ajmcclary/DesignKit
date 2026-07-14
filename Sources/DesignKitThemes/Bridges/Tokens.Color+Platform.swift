import DesignKitTokens
import CoreGraphics

extension Tokens.Color {
    /// Clamp a normalized `0...1` component to the nearest `0...255` byte.
    static func _byte(_ value: CGFloat) -> UInt8 {
        UInt8((max(0, min(1, Double(value))) * 255).rounded())
    }
}

#if canImport(AppKit)
import AppKit

extension NSColor {
    /// Build an sRGB `NSColor` from a `Tokens.Color`.
    public convenience init(tokens color: Tokens.Color) {
        self.init(
            srgbRed: CGFloat(color.red) / 255,
            green: CGFloat(color.green) / 255,
            blue: CGFloat(color.blue) / 255,
            alpha: CGFloat(color.alpha)
        )
    }
}

extension Tokens.Color {
    /// Extract a `Tokens.Color` from an `NSColor`, resolving it into the sRGB
    /// space first. Returns `nil` when the color has no sRGB representation
    /// (e.g. a pattern color). Channels are clamped and rounded to bytes.
    public init?(nsColor: NSColor) {
        guard let resolved = nsColor.usingColorSpace(.sRGB) else { return nil }
        self.init(
            red: Tokens.Color._byte(resolved.redComponent),
            green: Tokens.Color._byte(resolved.greenComponent),
            blue: Tokens.Color._byte(resolved.blueComponent),
            alpha: Double(resolved.alphaComponent)
        )
    }
}
#endif

#if canImport(UIKit)
import UIKit

extension UIColor {
    /// Build an sRGB `UIColor` from a `Tokens.Color`.
    public convenience init(tokens color: Tokens.Color) {
        self.init(
            red: CGFloat(color.red) / 255,
            green: CGFloat(color.green) / 255,
            blue: CGFloat(color.blue) / 255,
            alpha: CGFloat(color.alpha)
        )
    }
}

extension Tokens.Color {
    /// Extract a `Tokens.Color` from a `UIColor`. Returns `nil` when the color
    /// cannot yield RGBA components. Channels are clamped and rounded to bytes.
    public init?(uiColor: UIColor) {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        guard uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha) else { return nil }
        self.init(
            red: Tokens.Color._byte(red),
            green: Tokens.Color._byte(green),
            blue: Tokens.Color._byte(blue),
            alpha: Double(alpha)
        )
    }
}
#endif
