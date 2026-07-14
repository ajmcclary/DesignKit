import DesignKitThemes

/// User-facing appearance preference: follow the system, or force light/dark.
/// "System" is a preference, not a third theme variant — resolving it against
/// the live system appearance is the consumer's job (pass it in).
public enum ThemeAppearancePreference: String, CaseIterable, Codable, Hashable, Sendable {
    case system
    case light
    case dark

    /// Concrete appearance this preference yields under the given system appearance.
    public func resolved(system: Theme.Appearance) -> Theme.Appearance {
        switch self {
        case .system: system
        case .light: .light
        case .dark: .dark
        }
    }
}
