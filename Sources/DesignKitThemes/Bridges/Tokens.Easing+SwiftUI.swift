#if canImport(SwiftUI)
import DesignKitTokens
import Foundation
import SwiftUI

extension Animation {
    /// Build a `SwiftUI.Animation` from a `Tokens.Easing` cubic-Bézier curve
    /// and a duration. Wraps `Animation.timingCurve(_:_:_:_:duration:)`.
    public static func timingCurve(
        easing: Tokens.Easing,
        duration: Duration
    ) -> Animation {
        let seconds = Double(duration.components.seconds)
            + Double(duration.components.attoseconds) / 1e18
        return .timingCurve(
            easing.x1,
            easing.y1,
            easing.x2,
            easing.y2,
            duration: seconds
        )
    }
}
#endif
