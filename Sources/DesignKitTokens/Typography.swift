import Foundation

extension Tokens {
    /// Type scale, weights, line heights, tracking and font stacks. Token-backed
    /// values are generated into `Tokens+Generated.swift`; only the constants the
    /// design system has no token for are written here.
    public enum Typography {
        public enum Size {}
        public enum Weight {}
        public enum LineHeight {}
        public enum Tracking {
            /// Slight negative tracking for large titles (no design-system token).
            public static let tight: Double = -0.01
        }
    }
}
