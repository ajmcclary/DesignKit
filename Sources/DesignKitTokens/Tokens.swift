import Foundation

/// Umbrella namespace for the DesignKit token system.
///
/// All static design values (typography, spacing, shape, opacity, animation,
/// size, fallback palette) live under this enum. Theme-dependent (semantic)
/// colors live in `DesignKitThemes`' `Theme` type, not here.
///
/// This package is the canonical source of these values; the CSS mirror and
/// per-project generators it descends from are retired.
public enum Tokens {
    /// Tokens schema version. Bumped on backwards-incompatible token changes.
    public static let schemaVersion = "2.0.0"
}
