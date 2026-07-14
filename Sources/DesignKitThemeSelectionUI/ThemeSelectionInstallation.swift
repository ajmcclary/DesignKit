import DesignKitThemeSelection
import DesignKitThemes
import SwiftUI

public extension ThemeAppearancePreference {
    /// `.preferredColorScheme` argument for this preference (nil = follow system).
    var preferredColorScheme: ColorScheme? {
        switch self {
        case .system: nil
        case .light: .light
        case .dark: .dark
        }
    }
}

public extension View {
    /// Installs the resolved DesignKit theme and pins the effective color
    /// scheme for the subtree. Use at scene/window roots.
    func designKitThemeSelection(_ selection: ThemeSelection) -> some View {
        modifier(DesignKitThemeSelectionModifier(selection: selection))
    }
}

private struct DesignKitThemeSelectionModifier: ViewModifier {
    let selection: ThemeSelection
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .designTheme(selection.resolvedTheme(system: colorScheme == .dark ? .dark : .light))
            .preferredColorScheme(selection.appearance.preferredColorScheme)
    }
}
