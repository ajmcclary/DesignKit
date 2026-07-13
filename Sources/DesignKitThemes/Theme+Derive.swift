import DesignKitTokens
import Foundation

extension Theme {
    /// Blend ratios used by `derive` to fill secondary roles. These are
    /// DesignKit conveniences (inspired by DiagramKit's `ColorMix`), not
    /// upstream CSS values; transcribed themes carry explicit values and
    /// never pass through these.
    private enum Mix {
        static let surface = 0.04
        static let panel = 0.05
        static let elevated = 0.07
        static let gutter = 0.02
        static let borderVariant = 0.08
        static let border = 0.12
        static let elementBackground = 0.06
        static let elementHover = 0.10
        static let elementActive = 0.14
        static let textMuted = 0.35
        static let textPlaceholder = 0.45
        static let textDisabled = 0.55
        static let scrollbarThumb = 0.20
        static let scrollbarThumbHover = 0.30
        static let syntaxSoftened = 0.30
    }

    /// Alpha overlays used by `derive` for selection/highlight roles.
    private enum Overlay {
        static let activeLine = 0.08
        static let highlightRead = 0.10
        static let ghostHover = 0.10
        static let selected = 0.16
        static let highlightWrite = 0.16
        static let searchMatch = 0.30
        static let playerSelection = 0.15
    }

    /// Build a complete theme from primary colors, filling every secondary
    /// role with documented blends. Convenience for custom themes; the
    /// shipped families are fully explicit instead.
    public static func derive(
        name: String,
        appearance: Appearance,
        background: Tokens.Color,
        foreground: Tokens.Color,
        accent: Tokens.Color,
        accents: [Tokens.Color]? = nil,
        status: StatusPalette? = nil,
        syntax: [String: SyntaxStyle]? = nil,
        terminal: TerminalColors? = nil
    ) -> Theme {
        let bg = background
        let fg = foreground
        func blend(_ amount: Double) -> Tokens.Color { bg.mixed(with: fg, amount: amount) }
        func fade(_ amount: Double) -> Tokens.Color { fg.mixed(with: bg, amount: amount) }
        func overlay(_ color: Tokens.Color, _ alpha: Double) -> Tokens.Color {
            Tokens.Color(red: color.red, green: color.green, blue: color.blue, alpha: alpha)
        }

        let surface = blend(Mix.surface)
        let panel = blend(Mix.panel)
        let elevated = blend(Mix.elevated)
        let border = blend(Mix.border)
        let borderVariant = blend(Mix.borderVariant)
        let muted = fade(Mix.textMuted)
        let disabled = fade(Mix.textDisabled)
        let placeholder = fade(Mix.textPlaceholder)

        let states = ElementStates.States(
            background: blend(Mix.elementBackground),
            hover: blend(Mix.elementHover),
            active: blend(Mix.elementActive),
            selected: overlay(accent, Overlay.selected),
            disabled: blend(Mix.elementBackground)
        )
        let ghostStates = ElementStates.States(
            background: overlay(fg, 0),
            hover: overlay(fg, Overlay.ghostHover),
            active: overlay(accent, Overlay.selected),
            selected: overlay(accent, Overlay.selected),
            disabled: overlay(fg, 0)
        )

        let resolvedStatus = status ?? Self.defaultStatus(for: appearance)
        let softened = accent.mixed(with: fg, amount: Mix.syntaxSoftened)
        /// Default syntax colors are guaranteed readable: each is hardened to
        /// the WCAG large-text floor (3.0:1) against the editor background.
        /// Caller-supplied `syntax` tables are used verbatim.
        func readable(_ color: Tokens.Color) -> Tokens.Color {
            hardened(color, against: bg, appearance: appearance, ratio: 3.0)
        }
        let resolvedSyntax = syntax ?? [
            "keyword": SyntaxStyle(color: readable(accent), fontWeight: 600),
            "string": SyntaxStyle(color: readable(resolvedStatus.success.base)),
            "comment": SyntaxStyle(color: readable(muted), fontStyle: .italic),
            "function": SyntaxStyle(color: readable(softened)),
            "type": SyntaxStyle(color: readable(softened), fontWeight: 600),
            "number": SyntaxStyle(color: readable(resolvedStatus.success.base)),
            "constant": SyntaxStyle(color: readable(resolvedStatus.warning.base)),
            "property": SyntaxStyle(color: fg),
            "variable": SyntaxStyle(color: fg),
            "punctuation": SyntaxStyle(color: readable(muted)),
            "tag": SyntaxStyle(color: readable(accent)),
            "attribute": SyntaxStyle(color: readable(softened)),
        ]
        let resolvedTerminal = terminal ?? TerminalColors(
            foreground: fg,
            background: bg,
            ansi: TerminalColors.ANSI(
                black: Tokens.Palette.ANSI.black,
                red: Tokens.Palette.ANSI.red,
                green: Tokens.Palette.ANSI.green,
                yellow: Tokens.Palette.ANSI.yellow,
                blue: Tokens.Palette.ANSI.blue,
                magenta: Tokens.Palette.ANSI.magenta,
                cyan: Tokens.Palette.ANSI.cyan,
                white: Tokens.Palette.ANSI.white
            )
        )

        let style = ThemeStyle(
            background: bg,
            editor: EditorColors(
                background: bg,
                foreground: fg,
                gutterBackground: blend(Mix.gutter),
                activeLineBackground: overlay(accent, Overlay.activeLine),
                highlightedLineBackground: blend(Mix.elementBackground),
                activeLineNumber: fg,
                lineNumber: muted,
                invisible: disabled,
                indentGuide: borderVariant,
                indentGuideActive: accent,
                wrapGuide: borderVariant,
                activeWrapGuide: accent,
                subheaderBackground: surface,
                documentHighlightRead: overlay(accent, Overlay.highlightRead),
                documentHighlightWrite: overlay(accent, Overlay.highlightWrite),
                documentHighlightBracket: overlay(accent, Overlay.highlightWrite)
            ),
            chrome: ChromeColors(
                titleBarBackground: panel,
                titleBarInactiveBackground: blend(Mix.gutter),
                tabBarBackground: bg,
                tabActiveBackground: surface,
                tabInactiveBackground: blend(Mix.gutter),
                statusBarBackground: panel,
                toolbarBackground: panel,
                surfaceBackground: surface,
                elevatedSurfaceBackground: elevated,
                panelBackground: panel,
                panelFocusedBorder: accent,
                panelIndentGuide: borderVariant,
                panelIndentGuideActive: accent,
                panelIndentGuideHover: border,
                paneFocusedBorder: accent,
                paneGroupBorder: borderVariant
            ),
            elements: ElementStates(element: states, ghostElement: ghostStates),
            borders: BorderColors(
                base: border,
                disabled: borderVariant,
                focused: accent,
                selected: accent,
                transparent: overlay(accent, 0),
                variant: borderVariant
            ),
            text: TextLevels(
                base: fg, muted: muted, placeholder: placeholder,
                disabled: disabled, accent: accent
            ),
            icon: IconLevels(
                base: fg, muted: muted, placeholder: placeholder,
                disabled: disabled, accent: accent
            ),
            status: resolvedStatus,
            vcs: VCSPalette(
                created: Self.vcsRole(resolvedStatus.success.base),
                modified: Self.vcsRole(resolvedStatus.warning.base),
                deleted: Self.vcsRole(resolvedStatus.error.base),
                renamed: Self.vcsRole(resolvedStatus.info.base),
                ignored: Self.vcsRole(muted),
                hidden: Self.vcsRole(muted),
                unreachable: Self.vcsRole(disabled)
            ),
            scrollbar: ScrollbarColors(
                trackBackground: bg,
                trackBorder: borderVariant,
                thumbBackground: fade(1 - Mix.scrollbarThumb),
                thumbBorder: borderVariant,
                thumbHoverBackground: fade(1 - Mix.scrollbarThumbHover)
            ),
            search: SearchColors(matchBackground: overlay(accent, Overlay.searchMatch)),
            predictive: PredictiveColors(base: placeholder, background: bg, border: borderVariant),
            hint: HintColors(base: muted, background: bg, border: borderVariant),
            dropTarget: overlay(accent, Overlay.selected),
            linkTextHover: accent,
            players: [Player(cursor: accent, selection: overlay(accent, Overlay.playerSelection))],
            accents: accents ?? Self.defaultAccents(accent: accent, foreground: fg),
            syntax: resolvedSyntax,
            terminal: resolvedTerminal
        )
        return Theme(
            name: name,
            appearance: appearance,
            style: style,
            glass: GlassStyle.derived(from: style, appearance: appearance)
        )
    }

    /// Five accent tints: the accent itself plus fixed blends toward the
    /// foreground (25/50%) and two hue-preserving fades.
    private static func defaultAccents(accent: Tokens.Color, foreground: Tokens.Color) -> [Tokens.Color] {
        [
            accent,
            accent.mixed(with: foreground, amount: 0.25),
            accent.mixed(with: foreground, amount: 0.5),
            accent.mixed(with: foreground, amount: 0.65),
            accent.mixed(with: foreground, amount: 0.8),
        ]
    }

    /// Status role built from a base color: background = base @ 10% alpha,
    /// border = base @ 25% alpha.
    private static func statusRole(_ base: Tokens.Color) -> StatusPalette.Status {
        StatusPalette.Status(
            base: base,
            background: Tokens.Color(red: base.red, green: base.green, blue: base.blue, alpha: 0.10),
            border: Tokens.Color(red: base.red, green: base.green, blue: base.blue, alpha: 0.25)
        )
    }

    /// VCS role built from a base color, same alpha treatment as status.
    private static func vcsRole(_ base: Tokens.Color) -> VCSPalette.VCS {
        VCSPalette.VCS(
            base: base,
            background: Tokens.Color(red: base.red, green: base.green, blue: base.blue, alpha: 0.10),
            border: Tokens.Color(red: base.red, green: base.green, blue: base.blue, alpha: 0.25)
        )
    }

    /// Apple system status colors for the appearance, from `Tokens.Palette`.
    static func defaultStatus(for appearance: Appearance) -> StatusPalette {
        switch appearance {
        case .dark:
            StatusPalette(
                info: statusRole(Tokens.Palette.Status.infoDark),
                success: statusRole(Tokens.Palette.Status.successDark),
                warning: statusRole(Tokens.Palette.Status.warningDark),
                error: statusRole(Tokens.Palette.Status.errorDark),
                conflict: statusRole(Tokens.Palette.Status.cautionDark)
            )
        case .light:
            StatusPalette(
                info: statusRole(Tokens.Palette.Status.infoLight),
                success: statusRole(Tokens.Palette.Status.successLight),
                warning: statusRole(Tokens.Palette.Status.warningLight),
                error: statusRole(Tokens.Palette.Status.errorLight),
                // Palette defines no cautionLight; warning is the same family.
                conflict: statusRole(Tokens.Palette.Status.warningLight)
            )
        }
    }
}
