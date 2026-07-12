// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Ready Room Dark — transcribed from zed-trek.json.
    public static let readyRoomDark = Theme(
        name: "Ready Room Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x10131A),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x0B0F16),
                foreground: Tokens.Color(hex: 0xEADFD3),
                gutterBackground: Tokens.Color(hex: 0x111722),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1254901961),
                activeLineNumber: Tokens.Color(hex: 0xFFD8B0),
                lineNumber: Tokens.Color(hex: 0x9DA3AD),
                invisible: Tokens.Color(hex: 0x283241),
                indentGuide: Tokens.Color(hex: 0x283241),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0x283241),
                activeWrapGuide: Tokens.Color(hex: 0xFFD8B0),
                subheaderBackground: Tokens.Color(hex: 0x111722),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1411764706),
                documentHighlightWrite: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x1E2A3A),
                titleBarInactiveBackground: Tokens.Color(hex: 0x151923),
                tabBarBackground: Tokens.Color(hex: 0x10131A),
                tabActiveBackground: Tokens.Color(hex: 0x202633),
                tabInactiveBackground: Tokens.Color(hex: 0x111722),
                statusBarBackground: Tokens.Color(hex: 0x1E2A3A),
                toolbarBackground: Tokens.Color(hex: 0x151923),
                surfaceBackground: Tokens.Color(hex: 0x202633),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x293040),
                panelBackground: Tokens.Color(hex: 0x151923),
                panelFocusedBorder: Tokens.Color(hex: 0xFFD8B0),
                panelIndentGuide: Tokens.Color(hex: 0x283241),
                panelIndentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuideHover: Tokens.Color(hex: 0xFFD8B0),
                paneFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                paneGroupBorder: Tokens.Color(hex: 0x283241)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x202633), hover: Tokens.Color(hex: 0x2A3242), active: Tokens.Color(hex: 0x344052), selected: Tokens.Color(hex: 0x5D3A28), disabled: Tokens.Color(hex: 0x151923)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x10131A, alpha: 0.0), hover: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0941176471), active: Tokens.Color(hex: 0x7EC8DE, alpha: 0.168627451), selected: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2), disabled: Tokens.Color(hex: 0x151923, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x344052),
                disabled: Tokens.Color(hex: 0x242C39),
                focused: Tokens.Color(hex: 0x7EC8DE),
                selected: Tokens.Color(hex: 0xFFD8B0),
                transparent: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0),
                variant: Tokens.Color(hex: 0x283241)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xEADFD3),
                muted: Tokens.Color(hex: 0xB0A499),
                placeholder: Tokens.Color(hex: 0xA0A7B0),
                disabled: Tokens.Color(hex: 0x6D7480),
                accent: Tokens.Color(hex: 0xFFD8B0)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xD6C8BA),
                muted: Tokens.Color(hex: 0x8A929E),
                placeholder: Tokens.Color(hex: 0x68717D),
                disabled: Tokens.Color(hex: 0x4E5662),
                accent: Tokens.Color(hex: 0x7EC8DE)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x68D391), background: Tokens.Color(hex: 0x102617), border: Tokens.Color(hex: 0x2F8F5B)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFFD8B0), background: Tokens.Color(hex: 0x352312), border: Tokens.Color(hex: 0xB87952)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xFF8080), background: Tokens.Color(hex: 0x341519), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFFD8B0), background: Tokens.Color(hex: 0x352312), border: Tokens.Color(hex: 0xB87952))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x68D391), background: Tokens.Color(hex: 0x102617), border: Tokens.Color(hex: 0x2F8F5B)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x341519), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xC7A8FF), background: Tokens.Color(hex: 0x241C35), border: Tokens.Color(hex: 0x8F6AD8)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x858D99), background: Tokens.Color(hex: 0x111722), border: Tokens.Color(hex: 0x283241)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x6D7480), background: Tokens.Color(hex: 0x151923), border: Tokens.Color(hex: 0x242C39)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x77706C), background: Tokens.Color(hex: 0x202633), border: Tokens.Color(hex: 0x344052))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x151923),
                trackBorder: Tokens.Color(hex: 0x283241),
                thumbBackground: Tokens.Color(hex: 0xB87952, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xFFD8B0),
                thumbHoverBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xB87952, alpha: 0.4)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0xA99C90),
                background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1215686275),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x102838),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1882352941),
            linkTextHover: Tokens.Color(hex: 0x7EC8DE),
            players: [
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFFD8B0), selection: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xB87952), selection: Tokens.Color(hex: 0xB87952, alpha: 0.1490196078), background: Tokens.Color(hex: 0xB87952, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF7373), selection: Tokens.Color(hex: 0xFF7373, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF7373, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0xFFD8B0),
                Tokens.Color(hex: 0x7EC8DE),
                Tokens.Color(hex: 0x2A8EBC),
                Tokens.Color(hex: 0xB87952),
                Tokens.Color(hex: 0xEF5A5A),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x979EA8), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0xC7A8FF)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0xEADFD3)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0xFFBF86), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xB87952)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFFBF86)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0xA99C90), backgroundColor: Tokens.Color(hex: 0xFFD8B0, alpha: 0.0941176471)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xD6C8BA)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0xA99C90)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x68D391)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0xEADFD3)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xEADFD3)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFFBF86), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xC7A8FF)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x0B0F16, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x202633),
                border: Tokens.Color(hex: 0x344052),
                focusedBorder: Tokens.Color(hex: 0x7EC8DE)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Ready Room Light — transcribed from zed-trek.json.
    public static let readyRoomLight = Theme(
        name: "Ready Room Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xF7F3ED),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFFFAF3),
                foreground: Tokens.Color(hex: 0x2F343B),
                gutterBackground: Tokens.Color(hex: 0xEBE3D8),
                activeLineBackground: Tokens.Color(hex: 0x257EA7, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1411764706),
                activeLineNumber: Tokens.Color(hex: 0x1E3A5F),
                lineNumber: Tokens.Color(hex: 0x52473E),
                invisible: Tokens.Color(hex: 0xC9B8A7),
                indentGuide: Tokens.Color(hex: 0xC9B8A7),
                indentGuideActive: Tokens.Color(hex: 0x257EA7),
                wrapGuide: Tokens.Color(hex: 0xC9B8A7),
                activeWrapGuide: Tokens.Color(hex: 0xFFD8B0),
                subheaderBackground: Tokens.Color(hex: 0xF2EBE4),
                documentHighlightRead: Tokens.Color(hex: 0x257EA7, alpha: 0.1490196078),
                documentHighlightWrite: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1882352941),
                documentHighlightBracket: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2666666667)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xD8C8B8),
                titleBarInactiveBackground: Tokens.Color(hex: 0xEFE8DF),
                tabBarBackground: Tokens.Color(hex: 0xE2D4C4),
                tabActiveBackground: Tokens.Color(hex: 0xFFFAF3),
                tabInactiveBackground: Tokens.Color(hex: 0xD8C8B8),
                statusBarBackground: Tokens.Color(hex: 0xD8C8B8),
                toolbarBackground: Tokens.Color(hex: 0xEBE3D8),
                surfaceBackground: Tokens.Color(hex: 0xEFE8DF),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFDF8),
                panelBackground: Tokens.Color(hex: 0xE9E0D4),
                panelFocusedBorder: Tokens.Color(hex: 0xFFD8B0),
                panelIndentGuide: Tokens.Color(hex: 0xC9B8A7),
                panelIndentGuideActive: Tokens.Color(hex: 0x257EA7),
                panelIndentGuideHover: Tokens.Color(hex: 0xFFD8B0),
                paneFocusedBorder: Tokens.Color(hex: 0x257EA7),
                paneGroupBorder: Tokens.Color(hex: 0xC9B8A7)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xE2D4C4), hover: Tokens.Color(hex: 0xD8C8B8), active: Tokens.Color(hex: 0xCDB49D), selected: Tokens.Color(hex: 0xFFD8B0), disabled: Tokens.Color(hex: 0xEFE8DF)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0xF7F3ED, alpha: 0.0), hover: Tokens.Color(hex: 0x257EA7, alpha: 0.0941176471), active: Tokens.Color(hex: 0x257EA7, alpha: 0.1568627451), selected: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2274509804), disabled: Tokens.Color(hex: 0xEFE8DF, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0xA9907B),
                disabled: Tokens.Color(hex: 0xD8C8B8),
                focused: Tokens.Color(hex: 0x257EA7),
                selected: Tokens.Color(hex: 0xCF6900),
                transparent: Tokens.Color(hex: 0x257EA7, alpha: 0.0),
                variant: Tokens.Color(hex: 0xC9B8A7)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x2F343B),
                muted: Tokens.Color(hex: 0x544A43),
                placeholder: Tokens.Color(hex: 0x554A42),
                disabled: Tokens.Color(hex: 0xA9907B),
                accent: Tokens.Color(hex: 0x1E3A5F)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x4A5766),
                muted: Tokens.Color(hex: 0x7C7168),
                placeholder: Tokens.Color(hex: 0x9B8B7D),
                disabled: Tokens.Color(hex: 0xB8AA9C),
                accent: Tokens.Color(hex: 0x257EA7)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x18516B), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x1C5536), background: Tokens.Color(hex: 0xE8F5EC), border: Tokens.Color(hex: 0x77C99A)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x6F4116), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFFD8B0)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0x9A0F0F), background: Tokens.Color(hex: 0xFFE6E2), border: Tokens.Color(hex: 0xC44949)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xA26020), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFFD8B0))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x2F8F5B), background: Tokens.Color(hex: 0xE8F5EC), border: Tokens.Color(hex: 0x77C99A)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x18516B), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xFFE6E2), border: Tokens.Color(hex: 0xC44949)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x7A5AA6), background: Tokens.Color(hex: 0xEFE9FB), border: Tokens.Color(hex: 0xB8A0DC)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x927F70), background: Tokens.Color(hex: 0xF2EBE4), border: Tokens.Color(hex: 0xC9B8A7)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0xA9907B), background: Tokens.Color(hex: 0xEFE8DF), border: Tokens.Color(hex: 0xD8C8B8)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x887668), background: Tokens.Color(hex: 0xE5DDD5), border: Tokens.Color(hex: 0xA9907B))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xEBE3D8),
                trackBorder: Tokens.Color(hex: 0xC9B8A7),
                thumbBackground: Tokens.Color(hex: 0x9B5F42, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0x1E3A5F),
                thumbHoverBackground: Tokens.Color(hex: 0x257EA7, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0x9B5F42, alpha: 0.4705882353)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x6F6258),
                background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2274509804),
            linkTextHover: Tokens.Color(hex: 0x257EA7),
            players: [
                Player(cursor: Tokens.Color(hex: 0x257EA7), selection: Tokens.Color(hex: 0x257EA7, alpha: 0.1490196078), background: Tokens.Color(hex: 0x257EA7, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFFD8B0), selection: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x9B5F42), selection: Tokens.Color(hex: 0x9B5F42, alpha: 0.1490196078), background: Tokens.Color(hex: 0x9B5F42, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0x1E3A5F),
                Tokens.Color(hex: 0x206E92),
                Tokens.Color(hex: 0x237087),
                Tokens.Color(hex: 0xA15100),
                Tokens.Color(hex: 0x945B3F),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x794A34)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x61544A), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x644A88)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0x2F343B)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x7A4A35), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xA26020)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x7C4918)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x6F6258), backgroundColor: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1333333333)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x4A5766)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x5F544C)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x9B5F42), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x20613E)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xA26020)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x2F343B)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x1B5B79), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x2F343B)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0x9B5F42), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x7A5AA6)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFFFAF3, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xE2D4C4),
                border: Tokens.Color(hex: 0xA9907B),
                focusedBorder: Tokens.Color(hex: 0x257EA7)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
