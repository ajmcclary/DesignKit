import DesignKitThemes

/// The two-axis theme choice: a visual family plus an appearance preference.
/// Resolution: Family × AppearancePreference × current system appearance → Theme.
public struct ThemeSelection: Hashable, Sendable {
    public var family: Theme.Family
    public var appearance: ThemeAppearancePreference

    public init(family: Theme.Family, appearance: ThemeAppearancePreference) {
        self.family = family
        self.appearance = appearance
    }

    public func resolvedAppearance(system: Theme.Appearance) -> Theme.Appearance {
        appearance.resolved(system: system)
    }

    public func resolvedTheme(system: Theme.Appearance) -> Theme {
        family.theme(for: resolvedAppearance(system: system))
    }
}
