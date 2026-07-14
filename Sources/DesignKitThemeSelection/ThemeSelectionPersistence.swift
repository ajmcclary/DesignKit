import DesignKitThemes
import Foundation

/// Storage for a `ThemeSelection`. Writes are per-axis so app adapters can
/// mirror each axis onto an existing store without touching the other's keys.
/// MainActor-bound: the controller only calls it from the main actor, and app
/// stores (settings singletons, UserDefaults mirrors) are main-thread surfaces.
@MainActor
public protocol ThemeSelectionPersistence {
    /// nil means "nothing persisted" — the controller falls back to its default.
    func loadSelection() -> ThemeSelection?
    func saveFamily(_ family: Theme.Family)
    func saveAppearance(_ appearance: ThemeAppearancePreference)
}

/// UserDefaults-backed persistence with configurable defaults instance and keys.
public struct UserDefaultsThemeSelectionPersistence: ThemeSelectionPersistence {
    public static let defaultFamilyKey = "designKit.themeSelection.family"
    public static let defaultAppearanceKey = "designKit.themeSelection.appearance"

    private let defaults: UserDefaults
    private let familyKey: String
    private let appearanceKey: String

    public init(
        defaults: UserDefaults = .standard,
        familyKey: String = Self.defaultFamilyKey,
        appearanceKey: String = Self.defaultAppearanceKey
    ) {
        self.defaults = defaults
        self.familyKey = familyKey
        self.appearanceKey = appearanceKey
    }

    public func loadSelection() -> ThemeSelection? {
        guard let family = defaults.string(forKey: familyKey).flatMap(Theme.Family.init(rawValue:)) else {
            return nil
        }
        let appearance = defaults.string(forKey: appearanceKey)
            .flatMap(ThemeAppearancePreference.init(rawValue:)) ?? .system
        return ThemeSelection(family: family, appearance: appearance)
    }

    public func saveFamily(_ family: Theme.Family) {
        defaults.set(family.rawValue, forKey: familyKey)
    }

    public func saveAppearance(_ appearance: ThemeAppearancePreference) {
        defaults.set(appearance.rawValue, forKey: appearanceKey)
    }
}
