import DesignKitTokens
import Foundation

/// Status palette covering five kinds (info/success/warning/error/conflict),
/// each with `base`, `background`, and `border` keys in Zed JSON.
public struct StatusPalette: Hashable, Sendable {
    /// One status entry — base color plus background/border tints.
    public struct Status: Hashable, Sendable {
        /// Foreground / accent color for the status.
        public let base: Tokens.Color
        /// Background fill for status badges/banners.
        public let background: Tokens.Color
        /// Border for status badges/banners.
        public let border: Tokens.Color

        /// Memberwise builder.
        public init(base: Tokens.Color, background: Tokens.Color, border: Tokens.Color) {
            self.base = base
            self.background = background
            self.border = border
        }
    }

    /// Informational status.
    public let info: Status
    /// Success status.
    public let success: Status
    /// Warning status.
    public let warning: Status
    /// Error status.
    public let error: Status
    /// Merge-conflict status.
    public let conflict: Status

    /// Memberwise builder.
    public init(info: Status, success: Status, warning: Status, error: Status, conflict: Status) {
        self.info = info
        self.success = success
        self.warning = warning
        self.error = error
        self.conflict = conflict
    }

}
