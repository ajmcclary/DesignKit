import DesignKitThemes
import Testing

@Suite("Hierarchical syntax resolution")
struct SyntaxResolutionTests {
    @Test("exact key wins over ancestors")
    func exactKeyWins() {
        let functionColor = Tokens.Color(hex: 0x111111)
        let methodColor = Tokens.Color(hex: 0x222222)
        let theme = ThemeFixtures.makeMinimalTheme(syntax: [
            "function": SyntaxStyle(color: functionColor),
            "function.method": SyntaxStyle(color: methodColor),
        ])
        #expect(theme.resolveSyntaxColor(for: "function.method") == methodColor)
        #expect(theme.resolveSyntaxColor(for: "function") == functionColor)
    }

    @Test("dotted key falls back segment by segment")
    func dottedKeyFallsBackSegmentBySegment() {
        let functionColor = Tokens.Color(hex: 0x111111)
        let theme = ThemeFixtures.makeMinimalTheme(syntax: [
            "function": SyntaxStyle(color: functionColor)
        ])
        #expect(theme.resolveSyntaxColor(for: "function.method.builtin") == functionColor)
    }

    @Test("unknown key falls back to editor foreground")
    func unknownKeyFallsBackToEditorForeground() {
        let theme = ThemeFixtures.makeMinimalTheme(syntax: [:])
        #expect(theme.resolveSyntaxColor(for: "does.not.exist") == theme.style.editor.foreground)
        #expect(theme.resolveSyntaxStyle(for: "does.not.exist") == nil)
    }

    @Test("style lookup returns weight and italic")
    func styleLookupReturnsFullStyle() {
        let theme = ThemeFixtures.makeMinimalTheme(syntax: [
            "keyword": SyntaxStyle(color: ThemeFixtures.fg, fontWeight: 800, fontStyle: .italic)
        ])
        let resolved = theme.resolveSyntaxStyle(for: "keyword.control")
        #expect(resolved?.fontWeight == 800)
        #expect(resolved?.fontStyle == .italic)
    }
}
