import DesignKitTokens
import Foundation

extension Theme {
    /// Returns a copy of the theme adjusted for the given accessibility
    /// preferences. With `.none` this returns `self` unchanged.
    public func resolved(for prefs: AccessibilityPreferences) -> Theme {
        var style = self.style
        var glass = self.glass
        if prefs.increaseContrast {
            style = Self.hardened(style, appearance: appearance)
        }
        if prefs.reduceTransparency {
            glass = glass.opaque(surface: style.chrome.surfaceBackground)
        }
        return Theme(name: name, appearance: appearance, style: style, glass: glass)
    }

    /// Push a foreground role toward pure black/white until it clears
    /// `ratio` against `background`. 24 binary-search steps over the mix
    /// amount; colors already compliant return unchanged.
    static func hardened(
        _ color: Tokens.Color,
        against background: Tokens.Color,
        appearance: Appearance,
        ratio: Double = 4.5
    ) -> Tokens.Color {
        guard WCAG.contrastRatio(color, background) < ratio else { return color }
        let pole = Tokens.Color(hex: appearance == .dark ? 0xFFFFFF : 0x000000)
        guard WCAG.contrastRatio(pole, background) >= ratio else {
            // Background itself is too close to the pole; hardening toward it
            // can't help — return the pole as the best available.
            return pole
        }
        var lo = 0.0
        var hi = 1.0
        for _ in 0..<24 {
            let mid = (lo + hi) / 2
            if WCAG.contrastRatio(color.mixed(with: pole, amount: mid), background) >= ratio {
                hi = mid
            } else {
                lo = mid
            }
        }
        return color.mixed(with: pole, amount: hi)
    }

    /// Rebuild `style` with every text/icon/editor/status/syntax foreground
    /// role pushed through `hardened(_:against:appearance:)` using the
    /// surface that actually backs it.
    static func hardened(_ style: ThemeStyle, appearance: Appearance) -> ThemeStyle {
        let bg = style.background
        let editorBG = style.editor.background
        func harden(_ c: Tokens.Color, on surface: Tokens.Color, ratio: Double = 4.5) -> Tokens.Color {
            hardened(c, against: surface, appearance: appearance, ratio: ratio)
        }

        let text = TextLevels(
            base: harden(style.text.base, on: bg),
            muted: harden(style.text.muted, on: bg),
            placeholder: harden(style.text.placeholder, on: bg, ratio: 3.0),
            disabled: style.text.disabled,
            accent: harden(style.text.accent, on: bg)
        )
        let icon = IconLevels(
            base: harden(style.icon.base, on: bg),
            muted: harden(style.icon.muted, on: bg),
            placeholder: harden(style.icon.placeholder, on: bg, ratio: 3.0),
            disabled: style.icon.disabled,
            accent: harden(style.icon.accent, on: bg)
        )
        func hardenStatus(_ s: StatusPalette.Status) -> StatusPalette.Status {
            StatusPalette.Status(
                base: harden(s.base, on: bg),
                background: s.background,
                border: s.border
            )
        }
        let status = StatusPalette(
            info: hardenStatus(style.status.info),
            success: hardenStatus(style.status.success),
            warning: hardenStatus(style.status.warning),
            error: hardenStatus(style.status.error),
            conflict: hardenStatus(style.status.conflict)
        )
        let syntax = style.syntax.mapValues { entry in
            SyntaxStyle(
                color: entry.color.map { harden($0, on: editorBG) },
                backgroundColor: entry.backgroundColor,
                fontWeight: entry.fontWeight,
                fontStyle: entry.fontStyle
            )
        }
        let editor = EditorColors(
            background: style.editor.background,
            foreground: harden(style.editor.foreground, on: editorBG),
            gutterBackground: style.editor.gutterBackground,
            activeLineBackground: style.editor.activeLineBackground,
            highlightedLineBackground: style.editor.highlightedLineBackground,
            activeLineNumber: harden(style.editor.activeLineNumber, on: editorBG),
            lineNumber: harden(style.editor.lineNumber, on: editorBG),
            invisible: style.editor.invisible,
            indentGuide: style.editor.indentGuide,
            indentGuideActive: style.editor.indentGuideActive,
            wrapGuide: style.editor.wrapGuide,
            activeWrapGuide: style.editor.activeWrapGuide,
            subheaderBackground: style.editor.subheaderBackground,
            documentHighlightRead: style.editor.documentHighlightRead,
            documentHighlightWrite: style.editor.documentHighlightWrite,
            documentHighlightBracket: style.editor.documentHighlightBracket
        )

        return ThemeStyle(
            background: style.background,
            editor: editor,
            chrome: style.chrome,
            elements: style.elements,
            borders: style.borders,
            text: text,
            icon: icon,
            status: status,
            vcs: style.vcs,
            scrollbar: style.scrollbar,
            search: style.search,
            predictive: style.predictive,
            hint: style.hint,
            dropTarget: style.dropTarget,
            linkTextHover: harden(style.linkTextHover, on: bg),
            players: style.players,
            accents: style.accents,
            syntax: syntax,
            terminal: style.terminal
        )
    }
}

extension GlassStyle {
    /// A copy with all translucency removed: the glass tint becomes the
    /// opaque `surface` color and glass opacity is forced to 1.
    public func opaque(surface: Tokens.Color) -> GlassStyle {
        GlassStyle(
            glass: Glass(
                tint: Tokens.Color(red: surface.red, green: surface.green, blue: surface.blue, alpha: 1.0),
                opacity: 1.0
            ),
            shadows: shadows,
            field: field,
            onAccent: onAccent,
            onDanger: onDanger
        )
    }
}
