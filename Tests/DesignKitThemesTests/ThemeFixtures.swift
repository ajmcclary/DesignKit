import DesignKitThemes

/// Shared test fixture: the smallest constructible theme. Exercises every
/// memberwise init, proving no group is constructible without every role.
enum ThemeFixtures {
    static let bg = Tokens.Color(hex: 0x000000)
    static let fg = Tokens.Color(hex: 0xFFFFFF)

    static func makeMinimalTheme(
        syntax: [String: SyntaxStyle] = ["keyword": SyntaxStyle(color: fg)]
    ) -> Theme {
        let bg = Self.bg
        let fg = Self.fg
        let states = ElementStates.States(
            background: bg, hover: bg, active: bg, selected: bg, disabled: bg
        )
        let status = StatusPalette.Status(base: fg, background: bg, border: bg)
        let vcs = VCSPalette.VCS(base: fg, background: bg, border: bg)
        let style = ThemeStyle(
            background: bg,
            editor: EditorColors(
                background: bg,
                foreground: fg,
                gutterBackground: bg,
                activeLineBackground: bg,
                highlightedLineBackground: bg,
                activeLineNumber: fg,
                lineNumber: fg,
                invisible: fg,
                indentGuide: fg,
                indentGuideActive: fg,
                wrapGuide: fg,
                activeWrapGuide: fg,
                subheaderBackground: bg,
                documentHighlightRead: bg,
                documentHighlightWrite: bg,
                documentHighlightBracket: bg
            ),
            chrome: ChromeColors(
                titleBarBackground: bg,
                titleBarInactiveBackground: bg,
                tabBarBackground: bg,
                tabActiveBackground: bg,
                tabInactiveBackground: bg,
                statusBarBackground: bg,
                toolbarBackground: bg,
                surfaceBackground: bg,
                elevatedSurfaceBackground: bg,
                panelBackground: bg,
                panelFocusedBorder: fg,
                panelIndentGuide: fg,
                panelIndentGuideActive: fg,
                panelIndentGuideHover: fg,
                paneFocusedBorder: fg,
                paneGroupBorder: fg
            ),
            elements: ElementStates(element: states, ghostElement: states),
            borders: BorderColors(
                base: fg, disabled: fg, focused: fg, selected: fg,
                transparent: fg, variant: fg
            ),
            text: TextLevels(
                base: fg, muted: fg, placeholder: fg, disabled: fg, accent: fg
            ),
            icon: IconLevels(
                base: fg, muted: fg, placeholder: fg, disabled: fg, accent: fg
            ),
            status: StatusPalette(
                info: status, success: status, warning: status,
                error: status, conflict: status
            ),
            vcs: VCSPalette(
                created: vcs, modified: vcs, deleted: vcs, renamed: vcs,
                ignored: vcs, hidden: vcs, unreachable: vcs
            ),
            scrollbar: ScrollbarColors(
                trackBackground: bg, trackBorder: bg, thumbBackground: fg,
                thumbBorder: fg, thumbHoverBackground: fg
            ),
            search: SearchColors(matchBackground: bg),
            predictive: PredictiveColors(base: fg, background: bg, border: bg),
            hint: HintColors(base: fg, background: bg, border: bg),
            dropTarget: bg,
            linkTextHover: fg,
            players: [Player(cursor: fg, selection: bg)],
            accents: [fg],
            syntax: syntax,
            terminal: nil
        )
        return Theme(
            name: "Minimal",
            appearance: .dark,
            style: style,
            glass: GlassStyle.derived(from: style, appearance: .dark)
        )
    }
}
