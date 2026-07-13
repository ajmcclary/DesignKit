#if canImport(SwiftUI)
import SwiftUI

private struct DesignThemeKey: EnvironmentKey {
    static let defaultValue: Theme = .default
}

extension EnvironmentValues {
    /// The active DesignKit theme. Defaults to `Theme.default` (LCARS Dark).
    public var designTheme: Theme {
        get { self[DesignThemeKey.self] }
        set { self[DesignThemeKey.self] = newValue }
    }
}

extension View {
    /// Installs `theme` for this hierarchy, folding in the system
    /// accessibility environment (increased contrast, reduced
    /// transparency/motion) via `Theme.resolved(for:)`.
    public func designTheme(_ theme: Theme) -> some View {
        modifier(DesignThemeModifier(theme: theme))
    }
}

private struct DesignThemeModifier: ViewModifier {
    let theme: Theme
    @Environment(\.colorSchemeContrast) private var contrast
    @Environment(\.accessibilityReduceTransparency) private var reduceTransparency
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    func body(content: Content) -> some View {
        let prefs = AccessibilityPreferences(
            increaseContrast: contrast == .increased,
            reduceTransparency: reduceTransparency,
            reduceMotion: reduceMotion
        )
        content
            .environment(\.designTheme, theme.resolved(for: prefs))
            .tint(SwiftUI.Color(tokens: theme.style.text.accent))
    }
}
#endif
