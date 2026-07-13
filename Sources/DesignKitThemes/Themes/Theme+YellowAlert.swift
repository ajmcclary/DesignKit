// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Yellow Alert Dark — transcribed from zed-trek.json.
    public static let yellowAlertDark = Theme(
        name: "Yellow Alert Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x0D0903),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x080602),
                foreground: Tokens.Color(hex: 0xF3E8CF),
                gutterBackground: Tokens.Color(hex: 0x100C04),
                activeLineBackground: Tokens.Color(hex: 0xFFD166, alpha: 0.0860),
                highlightedLineBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.1220),
                activeLineNumber: Tokens.Color(hex: 0xFFD166),
                lineNumber: Tokens.Color(hex: 0xAE9972),
                invisible: Tokens.Color(hex: 0x33260E),
                indentGuide: Tokens.Color(hex: 0x33260E),
                indentGuideActive: Tokens.Color(hex: 0xFFD166),
                wrapGuide: Tokens.Color(hex: 0x33260E),
                activeWrapGuide: Tokens.Color(hex: 0xFF9933),
                subheaderBackground: Tokens.Color(hex: 0x100C04),
                documentHighlightRead: Tokens.Color(hex: 0xFFD166, alpha: 0.1411764706),
                documentHighlightWrite: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0xFFD166, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x3A2A0C),
                titleBarInactiveBackground: Tokens.Color(hex: 0x141006),
                tabBarBackground: Tokens.Color(hex: 0x0D0903),
                tabActiveBackground: Tokens.Color(hex: 0x241A08),
                tabInactiveBackground: Tokens.Color(hex: 0x100C04),
                statusBarBackground: Tokens.Color(hex: 0x3A2A0C),
                toolbarBackground: Tokens.Color(hex: 0x141006),
                surfaceBackground: Tokens.Color(hex: 0x2B1F09),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x39290C),
                panelBackground: Tokens.Color(hex: 0x141006),
                panelFocusedBorder: Tokens.Color(hex: 0xFF9933),
                panelIndentGuide: Tokens.Color(hex: 0x33260E),
                panelIndentGuideActive: Tokens.Color(hex: 0xFFD166),
                panelIndentGuideHover: Tokens.Color(hex: 0xFF9933),
                paneFocusedBorder: Tokens.Color(hex: 0xFFD166),
                paneGroupBorder: Tokens.Color(hex: 0x33260E)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x241A08), hover: Tokens.Color(hex: 0x30230B), active: Tokens.Color(hex: 0x3E2D0E), selected: Tokens.Color(hex: 0x5A3A0D), disabled: Tokens.Color(hex: 0x141006)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x000000, alpha: 0.0), hover: Tokens.Color(hex: 0xFFD166, alpha: 0.0940), active: Tokens.Color(hex: 0xFFD166, alpha: 0.1680), selected: Tokens.Color(hex: 0xFF9933, alpha: 0.2000), disabled: Tokens.Color(hex: 0x241A08, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x4F3911),
                disabled: Tokens.Color(hex: 0x2A210D),
                focused: Tokens.Color(hex: 0xFFD166),
                selected: Tokens.Color(hex: 0xFF9933),
                transparent: Tokens.Color(hex: 0xFFD166, alpha: 0.0),
                variant: Tokens.Color(hex: 0x33260E)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xF3E8CF),
                muted: Tokens.Color(hex: 0xB6A37C),
                placeholder: Tokens.Color(hex: 0xAD9D7D),
                disabled: Tokens.Color(hex: 0x6F634D),
                accent: Tokens.Color(hex: 0xFFD166)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xE5D2A5),
                muted: Tokens.Color(hex: 0x9D895F),
                placeholder: Tokens.Color(hex: 0x756443),
                disabled: Tokens.Color(hex: 0x4A3C20),
                accent: Tokens.Color(hex: 0xFFD166)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102617), border: Tokens.Color(hex: 0x2F8F5B)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x3A2A0C), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x341519), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFFD166), background: Tokens.Color(hex: 0x3A2A0C), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x68D391), background: Tokens.Color(hex: 0x102617), border: Tokens.Color(hex: 0x2F8F5B)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x341519), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xC7A8FF), background: Tokens.Color(hex: 0x241C35), border: Tokens.Color(hex: 0x8F6AD8)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x6F634D), background: Tokens.Color(hex: 0x100C04), border: Tokens.Color(hex: 0x33260E)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x4A3C20), background: Tokens.Color(hex: 0x100C04), border: Tokens.Color(hex: 0x241A08)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x776D5B), background: Tokens.Color(hex: 0x241A08), border: Tokens.Color(hex: 0x4F3911))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x0D0903),
                trackBorder: Tokens.Color(hex: 0x33260E),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xFFD166),
                thumbHoverBackground: Tokens.Color(hex: 0xFFD166, alpha: 0.8)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.5000)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0xB6A37C),
                background: Tokens.Color(hex: 0xFFD166, alpha: 0.1215686275),
                border: Tokens.Color(hex: 0xFF9933)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x102838),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.1803921569),
            linkTextHover: Tokens.Color(hex: 0xC7E9F1),
            players: [
                Player(cursor: Tokens.Color(hex: 0xFFD166), selection: Tokens.Color(hex: 0xFFD166, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFFD166, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF7373), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                    Tokens.Color(hex: 0xFFD166),
                    Tokens.Color(hex: 0xFF9933),
                    Tokens.Color(hex: 0x7EC8DE),
                    Tokens.Color(hex: 0xC7E9F1),
                    Tokens.Color(hex: 0xFF7373),
                ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0xA79775), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0xFFD166)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0xFFE4A3), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0xF3E8CF)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0xFFD166), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0xFFD166), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0xFFD166), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0xB6A37C), backgroundColor: Tokens.Color(hex: 0xFFD166, alpha: 0.0941176471)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xE5D2A5)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0xB6A37C)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xFFD166), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0xFFD166), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0xF3E8CF)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xFFE4A3), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xF3E8CF)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFF7373), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xC7A8FF)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x080602, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x241A08),
                border: Tokens.Color(hex: 0x4F3911),
                focusedBorder: Tokens.Color(hex: 0xFFD166)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Yellow Alert Light — transcribed from zed-trek.json.
    public static let yellowAlertLight = Theme(
        name: "Yellow Alert Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xFFFAF0),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFFFDF7),
                foreground: Tokens.Color(hex: 0x2E2A21),
                gutterBackground: Tokens.Color(hex: 0xF7EFD9),
                activeLineBackground: Tokens.Color(hex: 0xFFD166, alpha: 0.1220),
                highlightedLineBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.1330),
                activeLineNumber: Tokens.Color(hex: 0x884600),
                lineNumber: Tokens.Color(hex: 0x574F3B),
                invisible: Tokens.Color(hex: 0xD2BD87),
                indentGuide: Tokens.Color(hex: 0xDFCFAA),
                indentGuideActive: Tokens.Color(hex: 0xFF9933),
                wrapGuide: Tokens.Color(hex: 0xDFCFAA),
                activeWrapGuide: Tokens.Color(hex: 0x257EA7),
                subheaderBackground: Tokens.Color(hex: 0xFBF3E1),
                documentHighlightRead: Tokens.Color(hex: 0xFFD166, alpha: 0.2),
                documentHighlightWrite: Tokens.Color(hex: 0xFF9933, alpha: 0.168627451),
                documentHighlightBracket: Tokens.Color(hex: 0xFFD166, alpha: 0.4)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xF4D276),
                titleBarInactiveBackground: Tokens.Color(hex: 0xF7EFD9),
                tabBarBackground: Tokens.Color(hex: 0xEFDCAE),
                tabActiveBackground: Tokens.Color(hex: 0xFFFDF7),
                tabInactiveBackground: Tokens.Color(hex: 0xEAD49F),
                statusBarBackground: Tokens.Color(hex: 0xF4D276),
                toolbarBackground: Tokens.Color(hex: 0xF7EFD9),
                surfaceBackground: Tokens.Color(hex: 0xF7EED8),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFEF9),
                panelBackground: Tokens.Color(hex: 0xF2E6CB),
                panelFocusedBorder: Tokens.Color(hex: 0xFFD166),
                panelIndentGuide: Tokens.Color(hex: 0xDFCFAA),
                panelIndentGuideActive: Tokens.Color(hex: 0xFF9933),
                panelIndentGuideHover: Tokens.Color(hex: 0xFFD166),
                paneFocusedBorder: Tokens.Color(hex: 0xFF9933),
                paneGroupBorder: Tokens.Color(hex: 0xD2BD87)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xEFDCAE), hover: Tokens.Color(hex: 0xE8CD8F), active: Tokens.Color(hex: 0xDEB96E), selected: Tokens.Color(hex: 0xFFD166), disabled: Tokens.Color(hex: 0xF8F1DF)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0xFFFAF0, alpha: 0.0), hover: Tokens.Color(hex: 0xFF9933, alpha: 0.0940), active: Tokens.Color(hex: 0xFF9933, alpha: 0.1690), selected: Tokens.Color(hex: 0xFFD166, alpha: 0.2670), disabled: Tokens.Color(hex: 0xEFDCAE, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0xB99B57),
                disabled: Tokens.Color(hex: 0xDFCFAA),
                focused: Tokens.Color(hex: 0xD66B00),
                selected: Tokens.Color(hex: 0x257EA7),
                transparent: Tokens.Color(hex: 0xFF9933, alpha: 0.0),
                variant: Tokens.Color(hex: 0xD2BD87)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x2E2A21),
                muted: Tokens.Color(hex: 0x584F3D),
                placeholder: Tokens.Color(hex: 0x574F3B),
                disabled: Tokens.Color(hex: 0xA99A7B),
                accent: Tokens.Color(hex: 0x734500)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x4A5766),
                muted: Tokens.Color(hex: 0x7D7056),
                placeholder: Tokens.Color(hex: 0x9C8D6B),
                disabled: Tokens.Color(hex: 0xBFB18F),
                accent: Tokens.Color(hex: 0xB45D00)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x195570), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x1D5938), background: Tokens.Color(hex: 0xE8F6ED), border: Tokens.Color(hex: 0x77C99A)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x7C4000), background: Tokens.Color(hex: 0xFFF0C2), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xA01010), background: Tokens.Color(hex: 0xFFE5E1), border: Tokens.Color(hex: 0xC44949)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xB45D00), background: Tokens.Color(hex: 0xFFF0C2), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x2F8F5B), background: Tokens.Color(hex: 0xE8F6ED), border: Tokens.Color(hex: 0x77C99A)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x195570), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xFFE5E1), border: Tokens.Color(hex: 0xC44949)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x7A5AA6), background: Tokens.Color(hex: 0xEFE9FB), border: Tokens.Color(hex: 0xB8A0DC)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x8E805F), background: Tokens.Color(hex: 0xFBF3E1), border: Tokens.Color(hex: 0xDFCFAA)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0xA99A7B), background: Tokens.Color(hex: 0xF8F1DF), border: Tokens.Color(hex: 0xDFCFAA)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x84775F), background: Tokens.Color(hex: 0xEEE3CA), border: Tokens.Color(hex: 0xBFB18F))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xF2E7CC),
                trackBorder: Tokens.Color(hex: 0xDFCFAA),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0x8A5300),
                thumbHoverBackground: Tokens.Color(hex: 0xFFD166, alpha: 0.8)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFFD166, alpha: 0.5330)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x6F634D),
                background: Tokens.Color(hex: 0xFFD166, alpha: 0.2),
                border: Tokens.Color(hex: 0xFF9933)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0xFFD166, alpha: 0.2666666667),
            linkTextHover: Tokens.Color(hex: 0x257EA7),
            players: [
                Player(cursor: Tokens.Color(hex: 0xB45D00), selection: Tokens.Color(hex: 0xFFD166, alpha: 0.2), background: Tokens.Color(hex: 0xFFD166, alpha: 0.2666666667)),
                Player(cursor: Tokens.Color(hex: 0x257EA7), selection: Tokens.Color(hex: 0x257EA7, alpha: 0.1490196078), background: Tokens.Color(hex: 0x257EA7, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                    Tokens.Color(hex: 0x8F6400),
                    Tokens.Color(hex: 0xA85400),
                    Tokens.Color(hex: 0x1E3A5F),
                    Tokens.Color(hex: 0x227398),
                    Tokens.Color(hex: 0xD81515),
                ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x884600)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x605741), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x654B8A)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0x2E2A21)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x884600), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x884600)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x8A5300), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x8E805F), backgroundColor: Tokens.Color(hex: 0xFFD166, alpha: 0.1882352941)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x4A5766)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x605643)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x20623F)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x2E2A21)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x2E2A21)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x7A5AA6)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFFFDF7, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xEFDCAE),
                border: Tokens.Color(hex: 0xB99B57),
                focusedBorder: Tokens.Color(hex: 0xD66B00)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
