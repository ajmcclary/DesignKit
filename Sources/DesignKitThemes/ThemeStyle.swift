import DesignKitTokens
import Foundation

/// The full visual surface of a theme: semantic color groups whose role
/// names descend from Zed's dotted keys, now defined directly in Swift.
public struct ThemeStyle: Hashable, Sendable {
    /// Top-level window/canvas background.
    public let background: Tokens.Color
    /// Editor canvas colors.
    public let editor: EditorColors
    /// Window-chrome colors.
    public let chrome: ChromeColors
    /// Element-state colors (element.* and ghost_element.*).
    public let elements: ElementStates
    /// Border colors.
    public let borders: BorderColors
    /// Text colors at five emphasis levels.
    public let text: TextLevels
    /// Icon colors at five emphasis levels.
    public let icon: IconLevels
    /// Status palette (info/success/warning/error/conflict).
    public let status: StatusPalette
    /// VCS palette (created/modified/deleted/renamed/ignored/hidden/unreachable).
    public let vcs: VCSPalette
    /// Scrollbar colors.
    public let scrollbar: ScrollbarColors
    /// Search-result colors.
    public let search: SearchColors
    /// Predictive (inline-suggestion) colors.
    public let predictive: PredictiveColors
    /// Inlay-hint colors.
    public let hint: HintColors
    /// Drop-target overlay color.
    public let dropTarget: Tokens.Color
    /// Hovered-link text color.
    public let linkTextHover: Tokens.Color
    /// Players array — `[0]` is the local user, others reserved.
    public let players: [Player]
    /// Accent palette (1+ colors used by the chrome).
    public let accents: [Tokens.Color]
    /// Per-token syntax styles, keyed verbatim by Zed token name.
    public let syntax: [String: SyntaxStyle]
    /// Optional terminal palette (future-compat).
    public let terminal: TerminalColors?

    /// Memberwise builder.
    public init(
        background: Tokens.Color,
        editor: EditorColors,
        chrome: ChromeColors,
        elements: ElementStates,
        borders: BorderColors,
        text: TextLevels,
        icon: IconLevels,
        status: StatusPalette,
        vcs: VCSPalette,
        scrollbar: ScrollbarColors,
        search: SearchColors,
        predictive: PredictiveColors,
        hint: HintColors,
        dropTarget: Tokens.Color,
        linkTextHover: Tokens.Color,
        players: [Player],
        accents: [Tokens.Color],
        syntax: [String: SyntaxStyle],
        terminal: TerminalColors?
    ) {
        self.background = background
        self.editor = editor
        self.chrome = chrome
        self.elements = elements
        self.borders = borders
        self.text = text
        self.icon = icon
        self.status = status
        self.vcs = vcs
        self.scrollbar = scrollbar
        self.search = search
        self.predictive = predictive
        self.hint = hint
        self.dropTarget = dropTarget
        self.linkTextHover = linkTextHover
        self.players = players
        self.accents = accents
        self.syntax = syntax
        self.terminal = terminal
    }
}

extension GlassStyle {
    /// Synthesize a `GlassStyle` from a `ThemeStyle` for themes that don't
    /// specify one explicitly. Glass tint = editor.background at 12%
    /// alpha; popover shadow = soft drop tuned to appearance; field colors
    /// derived from element states + borders.
    public static func derived(from style: ThemeStyle, appearance: Theme.Appearance) -> GlassStyle {
        let bg = style.editor.background
        let glassTint = Tokens.Color(red: bg.red, green: bg.green, blue: bg.blue, alpha: 0.12)
        let scheme: Tokens.Elevation.Scheme = appearance == .dark ? .dark : .light
        let elevation = Tokens.Elevation.popover(scheme)
        let popover = Self.Shadow(
            color: elevation.color, blur: elevation.blur, xOffset: elevation.x, yOffset: elevation.y
        )
        let field = Self.Field(
            fill: style.elements.element.background,
            border: style.borders.base,
            focusedBorder: style.borders.focused
        )
        let onRole = appearance == .light
            ? Tokens.Color(hex: 0xFF_FF_FF) : Tokens.Color(hex: 0x05_06_0A)
        return GlassStyle(
            glass: Self.Glass(tint: glassTint, opacity: 0.12),
            shadows: Self.Shadows(popover: popover),
            field: field,
            onAccent: onRole,
            onDanger: onRole
        )
    }
}
