// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Borg Cube Dark — transcribed from zed-trek.json.
    public static let borgCubeDark = Theme(
        name: "Borg Cube Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x050805),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x020402),
                foreground: Tokens.Color(hex: 0xD8F5DC),
                gutterBackground: Tokens.Color(hex: 0x071009),
                activeLineBackground: Tokens.Color(hex: 0x5EFC8D, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0x27C267, alpha: 0.1294117647),
                activeLineNumber: Tokens.Color(hex: 0x27C267),
                lineNumber: Tokens.Color(hex: 0x88A38E),
                invisible: Tokens.Color(hex: 0x132318),
                indentGuide: Tokens.Color(hex: 0x132318),
                indentGuideActive: Tokens.Color(hex: 0x5EFC8D),
                wrapGuide: Tokens.Color(hex: 0x132318),
                activeWrapGuide: Tokens.Color(hex: 0x27C267),
                subheaderBackground: Tokens.Color(hex: 0x081009),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1411764706),
                documentHighlightWrite: Tokens.Color(hex: 0x27C267, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0x27C267, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x0D1D10),
                titleBarInactiveBackground: Tokens.Color(hex: 0x080D09),
                tabBarBackground: Tokens.Color(hex: 0x050805),
                tabActiveBackground: Tokens.Color(hex: 0x101B12),
                tabInactiveBackground: Tokens.Color(hex: 0x071009),
                statusBarBackground: Tokens.Color(hex: 0x0D1D10),
                toolbarBackground: Tokens.Color(hex: 0x0B120D),
                surfaceBackground: Tokens.Color(hex: 0x152319),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x1C2F1F),
                panelBackground: Tokens.Color(hex: 0x0B120D),
                panelFocusedBorder: Tokens.Color(hex: 0x27C267),
                panelIndentGuide: Tokens.Color(hex: 0x132318),
                panelIndentGuideActive: Tokens.Color(hex: 0x5EFC8D),
                panelIndentGuideHover: Tokens.Color(hex: 0x27C267),
                paneFocusedBorder: Tokens.Color(hex: 0x5EFC8D),
                paneGroupBorder: Tokens.Color(hex: 0x132318)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x122017), hover: Tokens.Color(hex: 0x17291D), active: Tokens.Color(hex: 0x1D3826), selected: Tokens.Color(hex: 0x1F6B3C), disabled: Tokens.Color(hex: 0x0B120D)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x050805, alpha: 0.0), hover: Tokens.Color(hex: 0x5EFC8D, alpha: 0.0941176471), active: Tokens.Color(hex: 0x5EFC8D, alpha: 0.168627451), selected: Tokens.Color(hex: 0x27C267, alpha: 0.2), disabled: Tokens.Color(hex: 0x0B120D, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x183221),
                disabled: Tokens.Color(hex: 0x101B12),
                focused: Tokens.Color(hex: 0x5EFC8D),
                selected: Tokens.Color(hex: 0x27C267),
                transparent: Tokens.Color(hex: 0x5EFC8D, alpha: 0.0),
                variant: Tokens.Color(hex: 0x132318)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xD8F5DC),
                muted: Tokens.Color(hex: 0x89A590),
                placeholder: Tokens.Color(hex: 0x8AA58F),
                disabled: Tokens.Color(hex: 0x49634F),
                accent: Tokens.Color(hex: 0x9EFFA8)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xB3D9BA),
                muted: Tokens.Color(hex: 0x6F8A75),
                placeholder: Tokens.Color(hex: 0x516A58),
                disabled: Tokens.Color(hex: 0x334339),
                accent: Tokens.Color(hex: 0x5EFC8D)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x0C2630), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x5EFC8D), background: Tokens.Color(hex: 0x0D2815), border: Tokens.Color(hex: 0x27C267)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x351D07), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x321116), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x351D07), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x5EFC8D), background: Tokens.Color(hex: 0x0D2815), border: Tokens.Color(hex: 0x27C267)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x0C2630), border: Tokens.Color(hex: 0x257EA7)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x321116), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x9EFFA8), background: Tokens.Color(hex: 0x162818), border: Tokens.Color(hex: 0x27C267)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x5F7B65), background: Tokens.Color(hex: 0x081009), border: Tokens.Color(hex: 0x132318)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x49634F), background: Tokens.Color(hex: 0x0B120D), border: Tokens.Color(hex: 0x101B12)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x5D6E62), background: Tokens.Color(hex: 0x132318), border: Tokens.Color(hex: 0x183221))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x0B120D),
                trackBorder: Tokens.Color(hex: 0x132318),
                thumbBackground: Tokens.Color(hex: 0x27C267, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0x27C267),
                thumbHoverBackground: Tokens.Color(hex: 0x5EFC8D, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x7B9A82),
                background: Tokens.Color(hex: 0x27C267, alpha: 0.1215686275),
                border: Tokens.Color(hex: 0x5EFC8D)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x0C2630),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0x27C267, alpha: 0.1882352941),
            linkTextHover: Tokens.Color(hex: 0x7EC8DE),
            players: [
                Player(cursor: Tokens.Color(hex: 0x5EFC8D), selection: Tokens.Color(hex: 0x5EFC8D, alpha: 0.1490196078), background: Tokens.Color(hex: 0x5EFC8D, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x27C267), selection: Tokens.Color(hex: 0x27C267, alpha: 0.1490196078), background: Tokens.Color(hex: 0x27C267, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF7373), selection: Tokens.Color(hex: 0xFF7373, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF7373, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0x5EFC8D),
                Tokens.Color(hex: 0x27C267),
                Tokens.Color(hex: 0x9EFFA8),
                Tokens.Color(hex: 0x7EC8DE),
                Tokens.Color(hex: 0xFF9933),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x9EFFA8)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x5EFC8D), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x819E87), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x9EFFA8)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x9EFFA8), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0xD8F5DC)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x9EFFA8), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x5EFC8D), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x5EFC8D), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x7B9A82), backgroundColor: Tokens.Color(hex: 0x27C267, alpha: 0.0941176471)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xB3D9BA)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x819E87)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x5EFC8D), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x27C267)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x5EFC8D), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0xD8F5DC)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xCAFFD0), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xD8F5DC)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0x9EFFA8), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x9EFFA8)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x020402, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x122017),
                border: Tokens.Color(hex: 0x183221),
                focusedBorder: Tokens.Color(hex: 0x5EFC8D)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Borg Cube Light — transcribed from zed-trek.json.
    public static let borgCubeLight = Theme(
        name: "Borg Cube Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xF4FAF5),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFBFFF9),
                foreground: Tokens.Color(hex: 0x1D2A22),
                gutterBackground: Tokens.Color(hex: 0xE3ECE6),
                activeLineBackground: Tokens.Color(hex: 0x2FA85B, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0x5EFC8D, alpha: 0.1411764706),
                activeLineNumber: Tokens.Color(hex: 0x1D6338),
                lineNumber: Tokens.Color(hex: 0x3F5044),
                invisible: Tokens.Color(hex: 0xB7C8BB),
                indentGuide: Tokens.Color(hex: 0xB7C8BB),
                indentGuideActive: Tokens.Color(hex: 0x2FA85B),
                wrapGuide: Tokens.Color(hex: 0xB7C8BB),
                activeWrapGuide: Tokens.Color(hex: 0x5EFC8D),
                subheaderBackground: Tokens.Color(hex: 0xEDF4EF),
                documentHighlightRead: Tokens.Color(hex: 0x257EA7, alpha: 0.1490196078),
                documentHighlightWrite: Tokens.Color(hex: 0x5EFC8D, alpha: 0.1882352941),
                documentHighlightBracket: Tokens.Color(hex: 0x5EFC8D, alpha: 0.2666666667)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xC9DFCE),
                titleBarInactiveBackground: Tokens.Color(hex: 0xE3ECE6),
                tabBarBackground: Tokens.Color(hex: 0xD7E7DB),
                tabActiveBackground: Tokens.Color(hex: 0xFBFFF9),
                tabInactiveBackground: Tokens.Color(hex: 0xC9DFCE),
                statusBarBackground: Tokens.Color(hex: 0xC9DFCE),
                toolbarBackground: Tokens.Color(hex: 0xE3ECE6),
                surfaceBackground: Tokens.Color(hex: 0xE7F1EA),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFBFFFB),
                panelBackground: Tokens.Color(hex: 0xDFE9E2),
                panelFocusedBorder: Tokens.Color(hex: 0x5EFC8D),
                panelIndentGuide: Tokens.Color(hex: 0xB7C8BB),
                panelIndentGuideActive: Tokens.Color(hex: 0x2FA85B),
                panelIndentGuideHover: Tokens.Color(hex: 0x5EFC8D),
                paneFocusedBorder: Tokens.Color(hex: 0x2FA85B),
                paneGroupBorder: Tokens.Color(hex: 0xB7C8BB)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xD7E7DB), hover: Tokens.Color(hex: 0xC9DFCE), active: Tokens.Color(hex: 0xB7D5BE), selected: Tokens.Color(hex: 0x5EFC8D), disabled: Tokens.Color(hex: 0xEDF4EF)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0xF4FAF5, alpha: 0.0), hover: Tokens.Color(hex: 0x2FA85B, alpha: 0.0941176471), active: Tokens.Color(hex: 0x2FA85B, alpha: 0.1568627451), selected: Tokens.Color(hex: 0x5EFC8D, alpha: 0.2274509804), disabled: Tokens.Color(hex: 0xEDF4EF, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x78947F),
                disabled: Tokens.Color(hex: 0xC4D0C7),
                focused: Tokens.Color(hex: 0x2C9C55),
                selected: Tokens.Color(hex: 0x039F32),
                transparent: Tokens.Color(hex: 0x2FA85B, alpha: 0.0),
                variant: Tokens.Color(hex: 0xB7C8BB)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x1D2A22),
                muted: Tokens.Color(hex: 0x415446),
                placeholder: Tokens.Color(hex: 0x435447),
                disabled: Tokens.Color(hex: 0x9AAC9E),
                accent: Tokens.Color(hex: 0x1A5B33)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x34483A),
                muted: Tokens.Color(hex: 0x66786A),
                placeholder: Tokens.Color(hex: 0x839487),
                disabled: Tokens.Color(hex: 0xAEBDAE),
                accent: Tokens.Color(hex: 0x2C9C55)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x195570), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x195A31), background: Tokens.Color(hex: 0xE7F8EC), border: Tokens.Color(hex: 0x72D990)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x7C4000), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xA01010), background: Tokens.Color(hex: 0xFFE3E3), border: Tokens.Color(hex: 0xB54747)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xB45D00), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x2FA85B), background: Tokens.Color(hex: 0xE7F8EC), border: Tokens.Color(hex: 0x72D990)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x195570), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xFFE3E3), border: Tokens.Color(hex: 0xB54747)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x557A5F), background: Tokens.Color(hex: 0xE4F0E7), border: Tokens.Color(hex: 0x8FB69A)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x78947F), background: Tokens.Color(hex: 0xEDF4EF), border: Tokens.Color(hex: 0xB7C8BB)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x9AAC9E), background: Tokens.Color(hex: 0xEDF4EF), border: Tokens.Color(hex: 0xC4D0C7)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x596A5E), background: Tokens.Color(hex: 0xDCE8DF), border: Tokens.Color(hex: 0x78947F))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xE3ECE6),
                trackBorder: Tokens.Color(hex: 0xB7C8BB),
                thumbBackground: Tokens.Color(hex: 0x2FA85B, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0x1F6B3C),
                thumbHoverBackground: Tokens.Color(hex: 0x2FA85B, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4705882353)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x536A59),
                background: Tokens.Color(hex: 0x5EFC8D, alpha: 0.2),
                border: Tokens.Color(hex: 0x2FA85B)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0x5EFC8D, alpha: 0.2274509804),
            linkTextHover: Tokens.Color(hex: 0x257EA7),
            players: [
                Player(cursor: Tokens.Color(hex: 0x2FA85B), selection: Tokens.Color(hex: 0x2FA85B, alpha: 0.1490196078), background: Tokens.Color(hex: 0x2FA85B, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x5EFC8D), selection: Tokens.Color(hex: 0x5EFC8D, alpha: 0.1490196078), background: Tokens.Color(hex: 0x5EFC8D, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0x237C43),
                Tokens.Color(hex: 0x027C27),
                Tokens.Color(hex: 0x1F6B3C),
                Tokens.Color(hex: 0x24738B),
                Tokens.Color(hex: 0x4A5766),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x1D6338)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x2FA85B), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x495D4E), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x415E49)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x1F6B3C), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0x1D2A22)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1D6338), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x1C6437), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x884600)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x1F6B3C), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x536A59), backgroundColor: Tokens.Color(hex: 0x5EFC8D, alpha: 0.1333333333)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x34483A)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x495D4E)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x2FA85B), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x116537)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x1D6338), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x1D2A22)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x1D2A22)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0x2FA85B), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x557A5F)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFBFFF9, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xD7E7DB),
                border: Tokens.Color(hex: 0x78947F),
                focusedBorder: Tokens.Color(hex: 0x2C9C55)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
