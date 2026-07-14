#if canImport(SwiftUI)
import DesignKitTokens
import SwiftUI

#if canImport(AppKit)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif

extension Color {
    /// Build a `SwiftUI.Color` from a `Tokens.Color` (sRGB).
    public init(tokens color: Tokens.Color) {
        self.init(
            .sRGB,
            red: Double(color.red) / 255,
            green: Double(color.green) / 255,
            blue: Double(color.blue) / 255,
            opacity: color.alpha
        )
    }
}

#if canImport(AppKit) || canImport(UIKit)
extension Tokens.Color {
    /// Extract a `Tokens.Color` from a `SwiftUI.Color` by resolving it through
    /// the platform color type. Returns `nil` when the color cannot be
    /// represented in sRGB.
    public init?(_ color: Color) {
        #if canImport(AppKit)
        self.init(nsColor: NSColor(color))
        #elseif canImport(UIKit)
        self.init(uiColor: UIColor(color))
        #endif
    }
}
#endif
#endif
