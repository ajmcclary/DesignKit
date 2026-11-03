import DesignKitTokens

extension Theme {
    /// The default theme across all consumers. The design system is dark-first.
    public static let `default`: Theme = .dark

    /// Every built-in theme: the generated dark/light pair.
    public static let all: [Theme] = [.dark, .light]

    /// The built-in theme for an appearance.
    public static func theme(for appearance: Appearance) -> Theme {
        switch appearance {
        case .dark: .dark
        case .light: .light
        }
    }
}
