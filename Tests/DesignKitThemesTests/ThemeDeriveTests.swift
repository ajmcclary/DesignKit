import DesignKitThemes
import Testing

@Suite("Theme.derive")
struct ThemeDeriveTests {
    static let bg = Tokens.Color(hex: 0x000000)
    static let fg = Tokens.Color(hex: 0xFFFFFF)
    static let accent = Tokens.Color(hex: 0x0A84FF)
    static let derived = Theme.derive(
        name: "Derived Test",
        appearance: .dark,
        background: bg,
        foreground: fg,
        accent: accent
    )

    @Test("secondary roles follow the documented blend ratios")
    func documentedBlendRatios() {
        let t = Self.derived
        let bg = Self.bg
        let fg = Self.fg
        #expect(t.style.chrome.surfaceBackground == bg.mixed(with: fg, amount: 0.04))
        #expect(t.style.chrome.elevatedSurfaceBackground == bg.mixed(with: fg, amount: 0.07))
        #expect(t.style.chrome.panelBackground == bg.mixed(with: fg, amount: 0.05))
        #expect(t.style.borders.base == bg.mixed(with: fg, amount: 0.12))
        #expect(t.style.borders.variant == bg.mixed(with: fg, amount: 0.08))
        #expect(t.style.text.muted == fg.mixed(with: bg, amount: 0.35))
        #expect(t.style.text.disabled == fg.mixed(with: bg, amount: 0.55))
        #expect(t.style.elements.element.hover == bg.mixed(with: fg, amount: 0.10))
    }

    @Test("primary inputs land unmodified")
    func primaryInputs() {
        let t = Self.derived
        #expect(t.style.background == Self.bg)
        #expect(t.style.editor.background == Self.bg)
        #expect(t.style.editor.foreground == Self.fg)
        #expect(t.style.text.base == Self.fg)
        #expect(t.name == "Derived Test")
        #expect(t.appearance == .dark)
    }

    @Test("accent flows to focus and selection roles")
    func accentFlowsToFocusAndSelection() {
        let t = Self.derived
        #expect(t.style.borders.focused == Self.accent)
        #expect(t.style.text.accent == Self.accent)
        #expect(t.style.icon.accent == Self.accent)
    }

    @Test("all 12 core syntax roles are present")
    func coreSyntaxRolesResolve() {
        let t = Self.derived
        for key in ["keyword", "string", "comment", "function", "type", "number",
                    "constant", "property", "variable", "punctuation", "tag", "attribute"] {
            #expect(t.style.syntax[key] != nil, "missing derived syntax role: \(key)")
            #expect(t.style.syntax[key]?.color != nil, "derived syntax role has no color: \(key)")
        }
    }

    @Test("derived theme carries five accents and an ANSI terminal")
    func accentsAndTerminal() {
        let t = Self.derived
        #expect(t.style.accents.count == 5)
        #expect(t.style.accents.first == Self.accent)
        #expect(t.style.terminal?.ansi?.red == Tokens.Palette.ANSI.red)
    }

    @Test("classic themes exist and map to Apple system colors")
    func classicThemesExist() {
        #expect(Theme.classicDark.appearance == .dark)
        #expect(Theme.classicLight.appearance == .light)
        #expect(Theme.classicDark.style.text.accent == Tokens.Palette.Accent.dark)
        #expect(Theme.classicLight.style.text.accent == Tokens.Palette.Accent.light)
        #expect(Theme.classicDark.style.status.success.base == Tokens.Palette.Status.successDark)
        #expect(Theme.classicLight.style.status.error.base == Tokens.Palette.Status.errorLight)
    }
}
