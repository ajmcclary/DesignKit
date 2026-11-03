import DesignKitThemes
import Testing

@Suite("Theme catalog")
struct ThemeCatalogTests {
    @Test("catalog is the generated pair, default dark")
    func catalogIsTheGeneratedPair() {
        #expect(Theme.all == [.dark, .light])
        #expect(Theme.default == .dark)
        #expect(Theme.theme(for: .dark) == .dark && Theme.theme(for: .light) == .light)
        #expect(Set(Theme.all.map(\.id)) == ["Dark", "Light"])
    }

    @Test("generated dark theme carries the semantic token values")
    func generatedDarkSpotValues() {
        let t = Theme.dark
        #expect(t.name == "Dark" && t.appearance == .dark)
        #expect(t.style.background.hexString == "#1E1E1E")
        #expect(t.style.text.base.hexString == "#FFFFFFD9") // fg = rgba(255,255,255,0.85); hexString appends the alpha byte
        #expect(t.style.icon.accent.hexString == "#0A99FF")
        #expect(t.style.text.accent.hexString == "#0A99FF")
        #expect(t.style.status.success.base.hexString == "#30D158")
        #expect(t.style.syntax["keyword"]?.color?.hexString == "#569CD6")
        #expect(t.style.syntax["string"]?.color?.hexString == "#70A25A")
        #expect(t.style.syntax["number"]?.color?.hexString == "#F66666")
        #expect(t.style.syntax["emphasis"]?.fontStyle == .italic)
        #expect(t.style.syntax["strong"]?.fontWeight == 700)
        #expect(t.glass.onAccent.hexString == "#FFFFFF")
        #expect(t.style.accents == [t.style.icon.accent])
    }

    @Test("generated light theme carries the root-light values and inherits missing ones")
    func generatedLightSpotValues() {
        let t = Theme.light
        #expect(t.name == "Light" && t.appearance == .light)
        #expect(t.style.background.hexString == "#FFFFFF")
        #expect(t.style.icon.accent.hexString == "#0078F0")
        #expect(t.style.text.accent.hexString == "#0064D6")
        #expect(t.style.status.success.base.hexString == "#1E7B34")
        #expect(t.style.syntax["keyword"]?.color?.hexString == "#0000FF")
        #expect(t.glass.onAccent.hexString == "#FFFFFF")   // accent-contrast has no light value
        #expect(t.style.terminal?.ansi?.red?.hexString == "#F44747") // ansi-* inherit the dark base
    }

    @Test("current-line highlight is distinguishable from the text selection")
    func activeLineIsNotTheSelectionColour() {
        for theme in Theme.all {
            #expect(theme.style.editor.activeLineBackground != theme.style.players[0].selection, "\(theme.name)")
            #expect(theme.style.editor.highlightedLineBackground != theme.style.editor.activeLineBackground, "\(theme.name)")
        }
    }
}
