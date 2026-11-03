import DesignKitThemes

/// The user's theme choice: an appearance preference.
/// Resolution: AppearancePreference × current system appearance → Theme.
public struct ThemeSelection: Hashable, Sendable {
    public var appearance: ThemeAppearancePreference

    public init(appearance: ThemeAppearancePreference) {
        self.appearance = appearance
    }

    public func resolvedAppearance(system: Theme.Appearance) -> Theme.Appearance {
        appearance.resolved(system: system)
    }

    public func resolvedTheme(system: Theme.Appearance) -> Theme {
        Theme.theme(for: resolvedAppearance(system: system))
    }
}
