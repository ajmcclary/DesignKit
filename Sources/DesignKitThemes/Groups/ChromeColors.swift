import DesignKitTokens
import Foundation

/// Window-chrome colors — title bar, tab bar, status bar, toolbar, panels.
/// Mapped to Zed's `title_bar.*` / `tab_bar.*` / `tab.*` / `status_bar.*` /
/// `toolbar.*` / `surface.*` / `elevated_surface.*` / `panel.*` / `pane.*`
/// / `pane_group.*` keys.
public struct ChromeColors: Hashable, Sendable {
    /// Title bar background (active window).
    public let titleBarBackground: Tokens.Color
    /// Title bar background (inactive window).
    public let titleBarInactiveBackground: Tokens.Color
    /// Tab strip background.
    public let tabBarBackground: Tokens.Color
    /// Active tab background.
    public let tabActiveBackground: Tokens.Color
    /// Inactive tab background.
    public let tabInactiveBackground: Tokens.Color
    /// Status bar background.
    public let statusBarBackground: Tokens.Color
    /// Toolbar background.
    public let toolbarBackground: Tokens.Color
    /// Generic surface background.
    public let surfaceBackground: Tokens.Color
    /// Elevated surface background (popovers, sheets).
    public let elevatedSurfaceBackground: Tokens.Color
    /// Side panel background.
    public let panelBackground: Tokens.Color
    /// Border color when a panel has focus.
    public let panelFocusedBorder: Tokens.Color
    /// Indent-guide line in panel views.
    public let panelIndentGuide: Tokens.Color
    /// Indent-guide line in panel views, active state.
    public let panelIndentGuideActive: Tokens.Color
    /// Indent-guide line in panel views, hover state.
    public let panelIndentGuideHover: Tokens.Color
    /// Border color when a pane has focus.
    public let paneFocusedBorder: Tokens.Color
    /// Border color around pane groups.
    public let paneGroupBorder: Tokens.Color

    /// Memberwise builder.
    public init(
        titleBarBackground: Tokens.Color,
        titleBarInactiveBackground: Tokens.Color,
        tabBarBackground: Tokens.Color,
        tabActiveBackground: Tokens.Color,
        tabInactiveBackground: Tokens.Color,
        statusBarBackground: Tokens.Color,
        toolbarBackground: Tokens.Color,
        surfaceBackground: Tokens.Color,
        elevatedSurfaceBackground: Tokens.Color,
        panelBackground: Tokens.Color,
        panelFocusedBorder: Tokens.Color,
        panelIndentGuide: Tokens.Color,
        panelIndentGuideActive: Tokens.Color,
        panelIndentGuideHover: Tokens.Color,
        paneFocusedBorder: Tokens.Color,
        paneGroupBorder: Tokens.Color
    ) {
        self.titleBarBackground = titleBarBackground
        self.titleBarInactiveBackground = titleBarInactiveBackground
        self.tabBarBackground = tabBarBackground
        self.tabActiveBackground = tabActiveBackground
        self.tabInactiveBackground = tabInactiveBackground
        self.statusBarBackground = statusBarBackground
        self.toolbarBackground = toolbarBackground
        self.surfaceBackground = surfaceBackground
        self.elevatedSurfaceBackground = elevatedSurfaceBackground
        self.panelBackground = panelBackground
        self.panelFocusedBorder = panelFocusedBorder
        self.panelIndentGuide = panelIndentGuide
        self.panelIndentGuideActive = panelIndentGuideActive
        self.panelIndentGuideHover = panelIndentGuideHover
        self.paneFocusedBorder = paneFocusedBorder
        self.paneGroupBorder = paneGroupBorder
    }

    /// Returns true if a flat key falls inside one of the prefixes this
    /// sub-struct owns.
    package static func consumes(_ key: String) -> Bool {
        key.hasPrefix("title_bar.") || key.hasPrefix("tab_bar.")
            || key.hasPrefix("tab.") || key.hasPrefix("status_bar.")
            || key.hasPrefix("toolbar.") || key.hasPrefix("surface.")
            || key.hasPrefix("elevated_surface.") || key.hasPrefix("panel.")
            || key.hasPrefix("pane.") || key.hasPrefix("pane_group.")
    }

}
