import DesignKitThemes
import Foundation

/// Storage for a `ThemeSelection`. App adapters can mirror the appearance onto
/// an existing store. The DesignKit 2 family key is never read or written.
/// MainActor-bound: the controller only calls it from the main actor, and app
/// stores (settings singletons, UserDefaults mirrors) are main-thread surfaces.
@MainActor
public protocol ThemeSelectionPersistence {
    /// nil means "nothing persisted" — the controller falls back to its default.
    func loadSelection() -> ThemeSelection?
    func saveAppearance(_ appearance: ThemeAppearancePreference)
}

/// UserDefaults-backed persistence with configurable defaults instance and keys.
public struct UserDefaultsThemeSelectionPersistence: ThemeSelectionPersistence {
    public static let defaultAppearanceKey = "designKit.themeSelection.appearance"

    private let defaults: UserDefaults
    private let appearanceKey: String

    public init(
        defaults: UserDefaults = .standard,
        appearanceKey: String = Self.defaultAppearanceKey
    ) {
        self.defaults = defaults
        self.appearanceKey = appearanceKey
    }

    /// nil when nothing parseable is stored under the appearance key.
    public func loadSelection() -> ThemeSelection? {
        guard let appearance = defaults.string(forKey: appearanceKey)
            .flatMap(ThemeAppearancePreference.init(rawValue:)) else {
            return nil
        }
        return ThemeSelection(appearance: appearance)
    }

    public func saveAppearance(_ appearance: ThemeAppearancePreference) {
        defaults.set(appearance.rawValue, forKey: appearanceKey)
    }
}
