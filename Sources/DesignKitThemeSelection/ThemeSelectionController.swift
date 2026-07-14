import Combine
import DesignKitThemes

/// Applies an appearance preference to the host application (on macOS:
/// NSApplication.appearance). Injectable so apps keep their existing applier
/// (RepoPrompt: AppearanceController) and tests use a spy.
@MainActor
public protocol ThemeAppearanceApplying {
    func applySystemAppearance(_ preference: ThemeAppearancePreference)
}

/// Single writer for theme selection: owns the value, persists per-axis, and
/// invokes the injected appearance applier on every successful mutation.
/// App-side effects (notifications, provider snapshots) stay in the app,
/// layered on the Bool change signal the mutators return.
///
/// Does NOT apply appearance on init — launch-time application is app policy.
@MainActor
public final class ThemeSelectionController: ObservableObject {
    @Published public private(set) var selection: ThemeSelection

    private let persistence: any ThemeSelectionPersistence
    private let appearanceApplier: (any ThemeAppearanceApplying)?

    public init(
        persistence: any ThemeSelectionPersistence,
        defaultSelection: ThemeSelection = ThemeSelection(family: .lcars, appearance: .system),
        appearanceApplier: (any ThemeAppearanceApplying)? = nil
    ) {
        self.persistence = persistence
        self.appearanceApplier = appearanceApplier
        self.selection = persistence.loadSelection() ?? defaultSelection
    }

    /// True when the value changed; callers gate their own side effects on it.
    @discardableResult
    public func setFamily(_ family: Theme.Family) -> Bool {
        guard family != selection.family else { return false }
        selection.family = family
        persistence.saveFamily(family)
        appearanceApplier?.applySystemAppearance(selection.appearance)
        return true
    }

    @discardableResult
    public func setAppearance(_ appearance: ThemeAppearancePreference) -> Bool {
        guard appearance != selection.appearance else { return false }
        selection.appearance = appearance
        persistence.saveAppearance(appearance)
        appearanceApplier?.applySystemAppearance(appearance)
        return true
    }

    /// Re-reads persisted values (e.g. after an external settings import).
    @discardableResult
    public func refreshFromPersistence() -> Bool {
        guard let loaded = persistence.loadSelection(), loaded != selection else { return false }
        selection = loaded
        appearanceApplier?.applySystemAppearance(loaded.appearance)
        return true
    }

    public func theme(for systemAppearance: Theme.Appearance) -> Theme {
        selection.resolvedTheme(system: systemAppearance)
    }
}
