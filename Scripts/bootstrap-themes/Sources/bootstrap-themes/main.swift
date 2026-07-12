import CodeEditorDesignTokens
import CodeEditorTheming
import Foundation

// MARK: - Literal helpers

func lit(_ c: Tokens.Color) -> String {
    let hex = String(format: "0x%02X%02X%02X", c.red, c.green, c.blue)
    if c.alpha >= 1 { return "Tokens.Color(hex: \(hex))" }
    return "Tokens.Color(hex: \(hex), alpha: \(trimmed(c.alpha)))"
}

func lit(_ c: Tokens.Color?) -> String {
    guard let c else { return "nil" }
    return lit(c)
}

/// Alpha with insignificant trailing digits trimmed, full precision kept.
func trimmed(_ value: Double) -> String {
    var s = String(format: "%.10f", value)
    while s.hasSuffix("0") { s.removeLast() }
    if s.hasSuffix(".") { s += "0" }
    return s
}

func lit(_ s: SyntaxStyle) -> String {
    var args: [String] = []
    if let color = s.color { args.append("color: \(lit(color))") }
    if let bg = s.backgroundColor { args.append("backgroundColor: \(lit(bg))") }
    if let weight = s.fontWeight { args.append("fontWeight: \(weight)") }
    if let style = s.fontStyle { args.append("fontStyle: .\(style.rawValue)") }
    return "SyntaxStyle(\(args.joined(separator: ", ")))"
}

func lit(_ p: Player) -> String {
    var args = ["cursor: \(lit(p.cursor))", "selection: \(lit(p.selection))"]
    if let bg = p.background { args.append("background: \(lit(bg))") }
    return "Player(\(args.joined(separator: ", ")))"
}

func lit(_ shadow: PlatformExtension.Shadow) -> String {
    "GlassStyle.Shadow(color: \(lit(shadow.color)), blur: \(trimmed(shadow.blur)), "
        + "xOffset: \(trimmed(shadow.xOffset)), yOffset: \(trimmed(shadow.yOffset)))"
}

func lit(_ terminal: TerminalColors?) -> String {
    guard let t = terminal else { return "nil" }
    var args: [String] = []
    if let fg = t.foreground { args.append("foreground: \(lit(fg))") }
    if let bg = t.background { args.append("background: \(lit(bg))") }
    if let ansi = t.ansi {
        let pairs: [(String, Tokens.Color?)] = [
            ("black", ansi.black), ("red", ansi.red), ("green", ansi.green),
            ("yellow", ansi.yellow), ("blue", ansi.blue), ("magenta", ansi.magenta),
            ("cyan", ansi.cyan), ("white", ansi.white),
            ("brightBlack", ansi.brightBlack), ("brightRed", ansi.brightRed),
            ("brightGreen", ansi.brightGreen), ("brightYellow", ansi.brightYellow),
            ("brightBlue", ansi.brightBlue), ("brightMagenta", ansi.brightMagenta),
            ("brightCyan", ansi.brightCyan), ("brightWhite", ansi.brightWhite),
        ]
        let ansiArgs = pairs.compactMap { name, color in
            color.map { "\(name): \(lit($0))" }
        }
        args.append("ansi: TerminalColors.ANSI(\(ansiArgs.joined(separator: ", ")))")
    }
    return "TerminalColors(\(args.joined(separator: ", ")))"
}

// MARK: - Group emitters

func emitStatus(_ s: StatusPalette.Status) -> String {
    "StatusPalette.Status(base: \(lit(s.base)), background: \(lit(s.background)), border: \(lit(s.border)))"
}

func emitVCS(_ v: VCSPalette.VCS) -> String {
    "VCSPalette.VCS(base: \(lit(v.base)), background: \(lit(v.background)), border: \(lit(v.border)))"
}

func emitStates(_ s: ElementStates.States) -> String {
    "ElementStates.States(background: \(lit(s.background)), hover: \(lit(s.hover)), "
        + "active: \(lit(s.active)), selected: \(lit(s.selected)), disabled: \(lit(s.disabled)))"
}

func emitStyle(_ s: ThemeStyle, indent: String) -> String {
    let i = indent
    let syntaxEntries = s.syntax.sorted { $0.key < $1.key }
        .map { "\(i)        \"\($0.key)\": \(lit($0.value))," }
        .joined(separator: "\n")
    let syntaxLiteral = s.syntax.isEmpty ? "[:]" : "[\n\(syntaxEntries)\n\(i)    ]"
    let playersLiteral = s.players.isEmpty
        ? "[]"
        : "[\n" + s.players.map { "\(i)        \(lit($0))," }.joined(separator: "\n") + "\n\(i)    ]"
    let accentsLiteral = s.accents.isEmpty
        ? "[]"
        : "[\n" + s.accents.map { "\(i)        \(lit($0))," }.joined(separator: "\n") + "\n\(i)    ]"
    return """
    ThemeStyle(
    \(i)    background: \(lit(s.background)),
    \(i)    editor: EditorColors(
    \(i)        background: \(lit(s.editor.background)),
    \(i)        foreground: \(lit(s.editor.foreground)),
    \(i)        gutterBackground: \(lit(s.editor.gutterBackground)),
    \(i)        activeLineBackground: \(lit(s.editor.activeLineBackground)),
    \(i)        highlightedLineBackground: \(lit(s.editor.highlightedLineBackground)),
    \(i)        activeLineNumber: \(lit(s.editor.activeLineNumber)),
    \(i)        lineNumber: \(lit(s.editor.lineNumber)),
    \(i)        invisible: \(lit(s.editor.invisible)),
    \(i)        indentGuide: \(lit(s.editor.indentGuide)),
    \(i)        indentGuideActive: \(lit(s.editor.indentGuideActive)),
    \(i)        wrapGuide: \(lit(s.editor.wrapGuide)),
    \(i)        activeWrapGuide: \(lit(s.editor.activeWrapGuide)),
    \(i)        subheaderBackground: \(lit(s.editor.subheaderBackground)),
    \(i)        documentHighlightRead: \(lit(s.editor.documentHighlightRead)),
    \(i)        documentHighlightWrite: \(lit(s.editor.documentHighlightWrite)),
    \(i)        documentHighlightBracket: \(lit(s.editor.documentHighlightBracket))
    \(i)    ),
    \(i)    chrome: ChromeColors(
    \(i)        titleBarBackground: \(lit(s.chrome.titleBarBackground)),
    \(i)        titleBarInactiveBackground: \(lit(s.chrome.titleBarInactiveBackground)),
    \(i)        tabBarBackground: \(lit(s.chrome.tabBarBackground)),
    \(i)        tabActiveBackground: \(lit(s.chrome.tabActiveBackground)),
    \(i)        tabInactiveBackground: \(lit(s.chrome.tabInactiveBackground)),
    \(i)        statusBarBackground: \(lit(s.chrome.statusBarBackground)),
    \(i)        toolbarBackground: \(lit(s.chrome.toolbarBackground)),
    \(i)        surfaceBackground: \(lit(s.chrome.surfaceBackground)),
    \(i)        elevatedSurfaceBackground: \(lit(s.chrome.elevatedSurfaceBackground)),
    \(i)        panelBackground: \(lit(s.chrome.panelBackground)),
    \(i)        panelFocusedBorder: \(lit(s.chrome.panelFocusedBorder)),
    \(i)        panelIndentGuide: \(lit(s.chrome.panelIndentGuide)),
    \(i)        panelIndentGuideActive: \(lit(s.chrome.panelIndentGuideActive)),
    \(i)        panelIndentGuideHover: \(lit(s.chrome.panelIndentGuideHover)),
    \(i)        paneFocusedBorder: \(lit(s.chrome.paneFocusedBorder)),
    \(i)        paneGroupBorder: \(lit(s.chrome.paneGroupBorder))
    \(i)    ),
    \(i)    elements: ElementStates(
    \(i)        element: \(emitStates(s.elements.element)),
    \(i)        ghostElement: \(emitStates(s.elements.ghostElement))
    \(i)    ),
    \(i)    borders: BorderColors(
    \(i)        base: \(lit(s.borders.base)),
    \(i)        disabled: \(lit(s.borders.disabled)),
    \(i)        focused: \(lit(s.borders.focused)),
    \(i)        selected: \(lit(s.borders.selected)),
    \(i)        transparent: \(lit(s.borders.transparent)),
    \(i)        variant: \(lit(s.borders.variant))
    \(i)    ),
    \(i)    text: TextLevels(
    \(i)        base: \(lit(s.text.base)),
    \(i)        muted: \(lit(s.text.muted)),
    \(i)        placeholder: \(lit(s.text.placeholder)),
    \(i)        disabled: \(lit(s.text.disabled)),
    \(i)        accent: \(lit(s.text.accent))
    \(i)    ),
    \(i)    icon: IconLevels(
    \(i)        base: \(lit(s.icon.base)),
    \(i)        muted: \(lit(s.icon.muted)),
    \(i)        placeholder: \(lit(s.icon.placeholder)),
    \(i)        disabled: \(lit(s.icon.disabled)),
    \(i)        accent: \(lit(s.icon.accent))
    \(i)    ),
    \(i)    status: StatusPalette(
    \(i)        info: \(emitStatus(s.status.info)),
    \(i)        success: \(emitStatus(s.status.success)),
    \(i)        warning: \(emitStatus(s.status.warning)),
    \(i)        error: \(emitStatus(s.status.error)),
    \(i)        conflict: \(emitStatus(s.status.conflict))
    \(i)    ),
    \(i)    vcs: VCSPalette(
    \(i)        created: \(emitVCS(s.vcs.created)),
    \(i)        modified: \(emitVCS(s.vcs.modified)),
    \(i)        deleted: \(emitVCS(s.vcs.deleted)),
    \(i)        renamed: \(emitVCS(s.vcs.renamed)),
    \(i)        ignored: \(emitVCS(s.vcs.ignored)),
    \(i)        hidden: \(emitVCS(s.vcs.hidden)),
    \(i)        unreachable: \(emitVCS(s.vcs.unreachable))
    \(i)    ),
    \(i)    scrollbar: ScrollbarColors(
    \(i)        trackBackground: \(lit(s.scrollbar.trackBackground)),
    \(i)        trackBorder: \(lit(s.scrollbar.trackBorder)),
    \(i)        thumbBackground: \(lit(s.scrollbar.thumbBackground)),
    \(i)        thumbBorder: \(lit(s.scrollbar.thumbBorder)),
    \(i)        thumbHoverBackground: \(lit(s.scrollbar.thumbHoverBackground))
    \(i)    ),
    \(i)    search: SearchColors(matchBackground: \(lit(s.search.matchBackground))),
    \(i)    predictive: PredictiveColors(
    \(i)        base: \(lit(s.predictive.base)),
    \(i)        background: \(lit(s.predictive.background)),
    \(i)        border: \(lit(s.predictive.border))
    \(i)    ),
    \(i)    hint: HintColors(
    \(i)        base: \(lit(s.hint.base)),
    \(i)        background: \(lit(s.hint.background)),
    \(i)        border: \(lit(s.hint.border))
    \(i)    ),
    \(i)    dropTarget: \(lit(s.dropTarget)),
    \(i)    linkTextHover: \(lit(s.linkTextHover)),
    \(i)    players: \(playersLiteral),
    \(i)    accents: \(accentsLiteral),
    \(i)    syntax: \(syntaxLiteral),
    \(i)    terminal: \(lit(s.terminal))
    \(i))
    """
}

func emitGlass(_ p: PlatformExtension, indent: String) -> String {
    let i = indent
    return """
    GlassStyle(
    \(i)    glass: GlassStyle.Glass(tint: \(lit(p.glass.tint)), opacity: \(trimmed(p.glass.opacity))),
    \(i)    shadows: GlassStyle.Shadows(popover: \(lit(p.shadows.popover))),
    \(i)    field: GlassStyle.Field(
    \(i)        fill: \(lit(p.field.fill)),
    \(i)        border: \(lit(p.field.border)),
    \(i)        focusedBorder: \(lit(p.field.focusedBorder))
    \(i)    ),
    \(i)    onAccent: \(lit(p.onAccent)),
    \(i)    onDanger: \(lit(p.onDanger))
    \(i))
    """
}

// MARK: - Naming

func staticName(for themeName: String) -> String {
    let words = themeName.split(separator: " ").map(String.init)
    guard let first = words.first else { return themeName }
    return ([first.lowercased()] + words.dropFirst()).joined()
}

func familyName(for themeName: String) -> String {
    themeName
        .replacingOccurrences(of: " Dark", with: "")
        .replacingOccurrences(of: " Light", with: "")
        .replacingOccurrences(of: " ", with: "")
}

// MARK: - Main

guard CommandLine.arguments.count == 2 else {
    FileHandle.standardError.write(Data("usage: bootstrap-themes <output-dir>\n".utf8))
    exit(1)
}
let outputDir = URL(fileURLWithPath: CommandLine.arguments[1])

guard let family = ThemeFamily.bundled("zed-trek") else {
    FileHandle.standardError.write(Data("error: could not load bundled zed-trek family\n".utf8))
    exit(1)
}

var byFamily: [String: [CodeEditorTheming.Theme]] = [:]
for theme in family.themes {
    byFamily[familyName(for: theme.name), default: []].append(theme)
}

try FileManager.default.createDirectory(at: outputDir, withIntermediateDirectories: true)

for (fam, themes) in byFamily.sorted(by: { $0.key < $1.key }) {
    var out = """
    // Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
    // Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
    // truth: edit these values directly.
    import DesignKitTokens

    extension Theme {
    """
    for theme in themes.sorted(by: { $0.name < $1.name }) {
        let name = staticName(for: theme.name)
        out += """

            /// \(theme.name) — transcribed from zed-trek.json.
            public static let \(name) = Theme(
                name: "\(theme.name)",
                appearance: .\(theme.appearance.rawValue),
                style: \(emitStyle(theme.style, indent: "        ")),
                glass: \(emitGlass(theme.platform, indent: "        "))
            )

        """
    }
    out += "}\n"
    let fileURL = outputDir.appendingPathComponent("Theme+\(fam).swift")
    try out.write(to: fileURL, atomically: true, encoding: .utf8)
    print("wrote \(fileURL.lastPathComponent) (\(themes.count) themes: \(themes.map(\.name).joined(separator: ", ")))")
}
