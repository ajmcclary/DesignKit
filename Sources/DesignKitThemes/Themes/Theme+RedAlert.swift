// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Red Alert Dark — transcribed from zed-trek.json.
    public static let redAlertDark = Theme(
        name: "Red Alert Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x100708),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x0C0506),
                foreground: Tokens.Color(hex: 0xF6D7CF),
                gutterBackground: Tokens.Color(hex: 0x16090B),
                activeLineBackground: Tokens.Color(hex: 0xEF5A5A, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.1254901961),
                activeLineNumber: Tokens.Color(hex: 0xFF9933),
                lineNumber: Tokens.Color(hex: 0xB39596),
                invisible: Tokens.Color(hex: 0x3A1D21),
                indentGuide: Tokens.Color(hex: 0x3A1D21),
                indentGuideActive: Tokens.Color(hex: 0xEF5A5A),
                wrapGuide: Tokens.Color(hex: 0x3A1D21),
                activeWrapGuide: Tokens.Color(hex: 0xFF9933),
                subheaderBackground: Tokens.Color(hex: 0x1F0D10),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1411764706),
                documentHighlightWrite: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0xFF9933, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x5C1119),
                titleBarInactiveBackground: Tokens.Color(hex: 0x1B0B0E),
                tabBarBackground: Tokens.Color(hex: 0x100708),
                tabActiveBackground: Tokens.Color(hex: 0x2A0F14),
                tabInactiveBackground: Tokens.Color(hex: 0x16090B),
                statusBarBackground: Tokens.Color(hex: 0x5C1119),
                toolbarBackground: Tokens.Color(hex: 0x1B0B0E),
                surfaceBackground: Tokens.Color(hex: 0x37161C),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x491D25),
                panelBackground: Tokens.Color(hex: 0x1B0B0E),
                panelFocusedBorder: Tokens.Color(hex: 0xFF9933),
                panelIndentGuide: Tokens.Color(hex: 0x3A1D21),
                panelIndentGuideActive: Tokens.Color(hex: 0xEF5A5A),
                panelIndentGuideHover: Tokens.Color(hex: 0xFF9933),
                paneFocusedBorder: Tokens.Color(hex: 0xEF5A5A),
                paneGroupBorder: Tokens.Color(hex: 0x3A1D21)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x3A151A), hover: Tokens.Color(hex: 0x541B22), active: Tokens.Color(hex: 0x6D202A), selected: Tokens.Color(hex: 0xEF5A5A), disabled: Tokens.Color(hex: 0x241316)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x100708, alpha: 0.0), hover: Tokens.Color(hex: 0xEF5A5A, alpha: 0.0941176471), active: Tokens.Color(hex: 0xEF5A5A, alpha: 0.168627451), selected: Tokens.Color(hex: 0xFF9933, alpha: 0.2), disabled: Tokens.Color(hex: 0x241316, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x7E1D27),
                disabled: Tokens.Color(hex: 0x3A1D21),
                focused: Tokens.Color(hex: 0xEF5A5A),
                selected: Tokens.Color(hex: 0xFF9933),
                transparent: Tokens.Color(hex: 0xEF5A5A, alpha: 0.0),
                variant: Tokens.Color(hex: 0x3A1D21)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xF6D7CF),
                muted: Tokens.Color(hex: 0xC09292),
                placeholder: Tokens.Color(hex: 0xB49698),
                disabled: Tokens.Color(hex: 0x725256),
                accent: Tokens.Color(hex: 0xFF8A8A)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xF0B4AA),
                muted: Tokens.Color(hex: 0x9A686B),
                placeholder: Tokens.Color(hex: 0x7D4D51),
                disabled: Tokens.Color(hex: 0x5D3B3F),
                accent: Tokens.Color(hex: 0xEF5A5A)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x0C2630), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x0E2A1B), border: Tokens.Color(hex: 0x2F8F5B)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x351D07), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xF27878), background: Tokens.Color(hex: 0x3A1116), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x351D07), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x68D391), background: Tokens.Color(hex: 0x0E2A1B), border: Tokens.Color(hex: 0x2F8F5B)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x0C2630), border: Tokens.Color(hex: 0x257EA7)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x3A1116), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xC7A8FF), background: Tokens.Color(hex: 0x241638), border: Tokens.Color(hex: 0x8F6AD8)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x8A6264), background: Tokens.Color(hex: 0x1F0D10), border: Tokens.Color(hex: 0x3A1D21)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x725256), background: Tokens.Color(hex: 0x241316), border: Tokens.Color(hex: 0x3A1D21)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x7A3E45), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.0862745098), border: Tokens.Color(hex: 0x7E1D27))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x1B0B0E),
                trackBorder: Tokens.Color(hex: 0x3A1D21),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xFF9933),
                thumbHoverBackground: Tokens.Color(hex: 0xEF5A5A, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0xB88483),
                background: Tokens.Color(hex: 0xFF9933, alpha: 0.1215686275),
                border: Tokens.Color(hex: 0xEF5A5A)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x0C2630),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.1882352941),
            linkTextHover: Tokens.Color(hex: 0x7EC8DE),
            players: [
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF7373), selection: Tokens.Color(hex: 0xFF7373, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF7373, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0xEF5A5A),
                Tokens.Color(hex: 0xFF9933),
                Tokens.Color(hex: 0xFFD8B0),
                Tokens.Color(hex: 0x7EC8DE),
                Tokens.Color(hex: 0xC7E9F1),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0xFF7373), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0xB19293), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0xF6D7CF)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0xF17171), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0xFF8A8A), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0xB88483), backgroundColor: Tokens.Color(hex: 0xFF9933, alpha: 0.0941176471)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xF0B4AA)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0xBD8D8C)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xFFB86B)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0xF17171), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0xF6D7CF)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xF6D7CF)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFF8A8A), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xC7A8FF)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x0C0506, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x3A151A),
                border: Tokens.Color(hex: 0x7E1D27),
                focusedBorder: Tokens.Color(hex: 0xEF5A5A)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Red Alert Light — transcribed from zed-trek.json.
    public static let redAlertLight = Theme(
        name: "Red Alert Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xFFF7F4),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFFFAF8),
                foreground: Tokens.Color(hex: 0x4A1F24),
                gutterBackground: Tokens.Color(hex: 0xFFF0EC),
                activeLineBackground: Tokens.Color(hex: 0xEF5A5A, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.1411764706),
                activeLineNumber: Tokens.Color(hex: 0x9A303B),
                lineNumber: Tokens.Color(hex: 0x704742),
                invisible: Tokens.Color(hex: 0xF0B4AA),
                indentGuide: Tokens.Color(hex: 0xF0B4AA),
                indentGuideActive: Tokens.Color(hex: 0xEF5A5A),
                wrapGuide: Tokens.Color(hex: 0xF0B4AA),
                activeWrapGuide: Tokens.Color(hex: 0xFF9933),
                subheaderBackground: Tokens.Color(hex: 0xFFE7DC),
                documentHighlightRead: Tokens.Color(hex: 0x257EA7, alpha: 0.1490196078),
                documentHighlightWrite: Tokens.Color(hex: 0xFF9933, alpha: 0.1882352941),
                documentHighlightBracket: Tokens.Color(hex: 0xFF9933, alpha: 0.2666666667)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xEF5A5A),
                titleBarInactiveBackground: Tokens.Color(hex: 0xFFD8B0),
                tabBarBackground: Tokens.Color(hex: 0xFFD8B0),
                tabActiveBackground: Tokens.Color(hex: 0xFFFAF8),
                tabInactiveBackground: Tokens.Color(hex: 0xFFC58F),
                statusBarBackground: Tokens.Color(hex: 0xEF5A5A),
                toolbarBackground: Tokens.Color(hex: 0xFFF0EC),
                surfaceBackground: Tokens.Color(hex: 0xFFECE7),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFFFF),
                panelBackground: Tokens.Color(hex: 0xFFE1D9),
                panelFocusedBorder: Tokens.Color(hex: 0xFF9933),
                panelIndentGuide: Tokens.Color(hex: 0xF0B4AA),
                panelIndentGuideActive: Tokens.Color(hex: 0xEF5A5A),
                panelIndentGuideHover: Tokens.Color(hex: 0xFF9933),
                paneFocusedBorder: Tokens.Color(hex: 0xEF5A5A),
                paneGroupBorder: Tokens.Color(hex: 0xF0B4AA)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xFFD8B0), hover: Tokens.Color(hex: 0xFFC58F), active: Tokens.Color(hex: 0xFFB06E), selected: Tokens.Color(hex: 0xEF5A5A), disabled: Tokens.Color(hex: 0xF8D9D2)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0xFFF7F4, alpha: 0.0), hover: Tokens.Color(hex: 0xEF5A5A, alpha: 0.0941176471), active: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1568627451), selected: Tokens.Color(hex: 0xFF9933, alpha: 0.2274509804), disabled: Tokens.Color(hex: 0xF8D9D2, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0xA4333F),
                disabled: Tokens.Color(hex: 0xEFB6AE),
                focused: Tokens.Color(hex: 0xEF5A5A),
                selected: Tokens.Color(hex: 0xDB6E00),
                transparent: Tokens.Color(hex: 0xEF5A5A, alpha: 0.0),
                variant: Tokens.Color(hex: 0xF0B4AA)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x4A1F24),
                muted: Tokens.Color(hex: 0x714745),
                placeholder: Tokens.Color(hex: 0x704742),
                disabled: Tokens.Color(hex: 0xB68F88),
                accent: Tokens.Color(hex: 0x922E38)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x7D3238),
                muted: Tokens.Color(hex: 0x9A6D68),
                placeholder: Tokens.Color(hex: 0xB78078),
                disabled: Tokens.Color(hex: 0xC6A19A),
                accent: Tokens.Color(hex: 0xEF5A5A)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x195772), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x1F5D3B), background: Tokens.Color(hex: 0xE9F7EE), border: Tokens.Color(hex: 0x77C99A)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x7F4200), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xA51010), background: Tokens.Color(hex: 0xFFE1DC), border: Tokens.Color(hex: 0xA4333F)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xB45D00), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x2F8F5B), background: Tokens.Color(hex: 0xE9F7EE), border: Tokens.Color(hex: 0x77C99A)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x195772), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xFFE1DC), border: Tokens.Color(hex: 0xA4333F)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x7A54C2), background: Tokens.Color(hex: 0xEEE7FF), border: Tokens.Color(hex: 0xB79CFF)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0xA9756E), background: Tokens.Color(hex: 0xFFE7DC), border: Tokens.Color(hex: 0xF0B4AA)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0xB68F88), background: Tokens.Color(hex: 0xF8D9D2), border: Tokens.Color(hex: 0xEFB6AE)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x8A3036), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1215686275), border: Tokens.Color(hex: 0xA4333F))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xFFF0EC),
                trackBorder: Tokens.Color(hex: 0xF0B4AA),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xA4333F),
                thumbHoverBackground: Tokens.Color(hex: 0xEF5A5A, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4705882353)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x7D4E4C),
                background: Tokens.Color(hex: 0xFF9933, alpha: 0.2),
                border: Tokens.Color(hex: 0xEF5A5A)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.2274509804),
            linkTextHover: Tokens.Color(hex: 0x257EA7),
            players: [
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0xDD1515),
                Tokens.Color(hex: 0xAD5700),
                Tokens.Color(hex: 0xAB5700),
                Tokens.Color(hex: 0x22759A),
                Tokens.Color(hex: 0x1E3A5F),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x864500)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x764B45), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x653EAF)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0x4A1F24)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0xAE1111), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x864500)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0xA4333F), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x7D4E4C), backgroundColor: Tokens.Color(hex: 0xFF9933, alpha: 0.1333333333)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x7D3238)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x774A48)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x20623F)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0xAE1111), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x4A1F24)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x1B5B79), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x4A1F24)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x7A54C2)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFFFAF8, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xFFD8B0),
                border: Tokens.Color(hex: 0xA4333F),
                focusedBorder: Tokens.Color(hex: 0xEF5A5A)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
