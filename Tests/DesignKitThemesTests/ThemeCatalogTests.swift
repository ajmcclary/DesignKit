import DesignKitThemes
import Testing

@Suite("Theme catalog")
struct ThemeCatalogTests {
    /// Spot values read directly from zed-trek.json ("Black Alert Dark").
    @Test("Black Alert Dark spot values match zed-trek.json")
    func blackAlertDarkSpotValues() {
        let t = Theme.blackAlertDark
        #expect(t.appearance == .dark)
        #expect(t.style.background.hexString == "#020204")
        #expect(t.style.editor.background.hexString == "#010204")
        #expect(t.style.editor.foreground.hexString == "#DFE7F1")
        #expect(t.style.chrome.surfaceBackground.hexString == "#161C2E")
        #expect(t.style.chrome.elevatedSurfaceBackground.hexString == "#22273B")
        #expect(t.style.borders.focused.hexString == "#7EC8DE")
        #expect(t.style.borders.selected.hexString == "#B5A7FF")
        #expect(t.style.accents.first?.hexString == "#7EC8DE")
        #expect(t.style.accents.count == 5)
    }

    /// Spot values read directly from zed-trek.json ("LCARS Dark").
    @Test("LCARS Dark spot values match zed-trek.json")
    func lcarsDarkSpotValues() {
        let t = Theme.lcarsDark
        #expect(t.appearance == .dark)
        #expect(t.style.background.hexString == "#05060A")
        #expect(t.style.editor.foreground.hexString == "#F2E7D8")
        #expect(t.style.text.accent.hexString == "#FFCC66")
        #expect(t.style.borders.focused.hexString == "#FF9933")
        #expect(t.style.chrome.panelBackground.hexString == "#0C111B")
        #expect(t.style.chrome.statusBarBackground.hexString == "#0D1018")
        #expect(t.style.accents.map(\.hexString) == ["#FF9933", "#FFD8B0", "#FFCC66", "#7EC8DE", "#CC99FF"])
        #expect(t.style.syntax["keyword"]?.color?.hexString == "#FF9933")
        #expect(t.style.syntax["keyword"]?.fontWeight == 700)
    }

    @Test("catalog enumerates all 24 themes with unique ids")
    func catalogEnumeratesAllThemes() {
        #expect(Theme.all.count == 24)
        #expect(Set(Theme.all.map(\.id)).count == 24)
    }

    @Test("default theme is LCARS Dark")
    func defaultThemeIsLCARSDark() {
        #expect(Theme.default == Theme.lcarsDark)
    }

    @Test("every family resolves both appearances")
    func everyFamilyResolvesBothAppearances() {
        #expect(Theme.Family.allCases.count == 12)
        for family in Theme.Family.allCases {
            #expect(family.theme(for: .dark).appearance == .dark, "\(family.rawValue)")
            #expect(family.theme(for: .light).appearance == .light, "\(family.rawValue)")
            #expect(!family.displayName.isEmpty)
        }
    }

    @Test("all 22 Zed Trek themes exist with unique names")
    func twentyTwoZedTrekThemesExist() {
        let all: [Theme] = [
            .blackAlertDark, .blackAlertLight, .borgCubeDark, .borgCubeLight,
            .commandDark, .commandLight, .federationDark, .federationLight,
            .lcarsDark, .lcarsLight,
            .lcarsHighContrastDark, .lcarsHighContrastLight,
            .missionControlDark, .missionControlLight,
            .readyRoomDark, .readyRoomLight, .redAlertDark, .redAlertLight,
            .sickBayDark, .sickBayLight, .yellowAlertDark, .yellowAlertLight,
        ]
        #expect(Set(all.map(\.name)).count == 22)
        for theme in all {
            #expect(theme.name.hasSuffix("Dark") == (theme.appearance == .dark), "\(theme.name)")
        }
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
}
