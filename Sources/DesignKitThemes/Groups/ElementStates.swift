import DesignKitTokens
import Foundation

/// UI-element state colors — five interaction states (background/hover/
/// active/selected/disabled), exposed twice: once for `element.*` and once
/// for `ghost_element.*` (transparent variants).
public struct ElementStates: Hashable, Sendable {
    /// Five interaction states for an element-class surface.
    public struct States: Hashable, Sendable {
        /// Default fill.
        public let background: Tokens.Color
        /// Hover fill.
        public let hover: Tokens.Color
        /// Active (pressed) fill.
        public let active: Tokens.Color
        /// Selected fill.
        public let selected: Tokens.Color
        /// Disabled fill.
        public let disabled: Tokens.Color

        /// Memberwise builder.
        public init(
            background: Tokens.Color,
            hover: Tokens.Color,
            active: Tokens.Color,
            selected: Tokens.Color,
            disabled: Tokens.Color
        ) {
            self.background = background
            self.hover = hover
            self.active = active
            self.selected = selected
            self.disabled = disabled
        }
    }

    /// Solid `element.*` states.
    public let element: States
    /// Translucent `ghost_element.*` states.
    public let ghostElement: States

    /// Memberwise builder.
    public init(element: States, ghostElement: States) {
        self.element = element
        self.ghostElement = ghostElement
    }

}
