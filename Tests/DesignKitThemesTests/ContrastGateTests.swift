import DesignKitThemes
import Testing

/// Quality gate: every shipped base theme keeps primary text readable.
/// Muted text gets the WCAG large-text floor (3.0). If a transcribed theme
/// legitimately fails, add it to `knownExceptions` with a justification
/// comment and report it — never lower the bar silently.
@Suite("Contrast quality gate")
struct ContrastGateTests {
    static let knownExceptions: Set<String> = []

    @Test("primary text meets AA (4.5:1) in every theme")
    func primaryTextMeetsAA() {
        for theme in Theme.all where !Self.knownExceptions.contains(theme.name) {
            #expect(
                WCAG.contrastRatio(theme.style.text.base, theme.style.background) >= 4.5,
                "\(theme.name) text.base"
            )
            #expect(
                WCAG.contrastRatio(theme.style.editor.foreground, theme.style.editor.background) >= 4.5,
                "\(theme.name) editor.foreground"
            )
        }
    }

    @Test("muted text meets the large-text floor (3.0:1) in every theme")
    func mutedTextMeetsLargeTextFloor() {
        for theme in Theme.all where !Self.knownExceptions.contains(theme.name) {
            #expect(
                WCAG.contrastRatio(theme.style.text.muted, theme.style.background) >= 3.0,
                "\(theme.name) text.muted"
            )
        }
    }

    @Test("all 12 core syntax roles resolve readably in every theme")
    func coreSyntaxRolesResolveInEveryTheme() {
        for theme in Theme.all {
            for key in ["keyword", "string", "comment", "function", "type", "number",
                        "constant", "property", "variable", "punctuation", "tag", "attribute"] {
                let resolved = theme.resolveSyntaxColor(for: key)
                #expect(
                    WCAG.contrastRatio(resolved, theme.style.editor.background) >= 3.0,
                    "\(theme.name)/\(key)"
                )
            }
        }
    }
}
