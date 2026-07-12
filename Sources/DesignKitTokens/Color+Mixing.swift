import Foundation

extension Tokens.Color {
    /// Linear per-channel sRGB blend toward `other`.
    /// `amount` 0 returns `self`, 1 returns `other`; values outside 0...1 are
    /// clamped. Mirrors CSS `color-mix(in srgb, self, other amount%)`, which
    /// the upstream design system used to derive secondary roles.
    public func mixed(with other: Tokens.Color, amount: Double) -> Tokens.Color {
        let t = Swift.min(Swift.max(amount, 0), 1)
        func lerp(_ a: UInt8, _ b: UInt8) -> UInt8 {
            UInt8((Double(a) + (Double(b) - Double(a)) * t).rounded())
        }
        return Tokens.Color(
            red: lerp(red, other.red),
            green: lerp(green, other.green),
            blue: lerp(blue, other.blue),
            alpha: alpha + (other.alpha - alpha) * t
        )
    }
}
