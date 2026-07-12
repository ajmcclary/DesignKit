// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Federation Dark — transcribed from zed-trek.json.
    public static let federationDark = Theme(
        name: "Federation Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x080D15),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x050911),
                foreground: Tokens.Color(hex: 0xDBE8F2),
                gutterBackground: Tokens.Color(hex: 0x09111D),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1254901961),
                activeLineNumber: Tokens.Color(hex: 0xFFD8B0),
                lineNumber: Tokens.Color(hex: 0x93A0AE),
                invisible: Tokens.Color(hex: 0x1A2B3F),
                indentGuide: Tokens.Color(hex: 0x1A2B3F),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0x1A2B3F),
                activeWrapGuide: Tokens.Color(hex: 0xFFD8B0),
                subheaderBackground: Tokens.Color(hex: 0x09111D),
                documentHighlightRead: Tokens.Color(hex: 0xC7E9F1, alpha: 0.1411764706),
                documentHighlightWrite: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x10213A),
                titleBarInactiveBackground: Tokens.Color(hex: 0x0C1420),
                tabBarBackground: Tokens.Color(hex: 0x080D15),
                tabActiveBackground: Tokens.Color(hex: 0x172536),
                tabInactiveBackground: Tokens.Color(hex: 0x09111D),
                statusBarBackground: Tokens.Color(hex: 0x10213A),
                toolbarBackground: Tokens.Color(hex: 0x0C1420),
                surfaceBackground: Tokens.Color(hex: 0x152336),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x1D2E43),
                panelBackground: Tokens.Color(hex: 0x0C1420),
                panelFocusedBorder: Tokens.Color(hex: 0xFFD8B0),
                panelIndentGuide: Tokens.Color(hex: 0x1A2B3F),
                panelIndentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuideHover: Tokens.Color(hex: 0xFFD8B0),
                paneFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                paneGroupBorder: Tokens.Color(hex: 0x1A2B3F)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x172536), hover: Tokens.Color(hex: 0x1D3045), active: Tokens.Color(hex: 0x263D57), selected: Tokens.Color(hex: 0x4C3724), disabled: Tokens.Color(hex: 0x0C1420)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x080D15, alpha: 0.0), hover: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0941176471), active: Tokens.Color(hex: 0x7EC8DE, alpha: 0.168627451), selected: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2), disabled: Tokens.Color(hex: 0x0C1420, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x23384F),
                disabled: Tokens.Color(hex: 0x172536),
                focused: Tokens.Color(hex: 0x7EC8DE),
                selected: Tokens.Color(hex: 0xFFD8B0),
                transparent: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0),
                variant: Tokens.Color(hex: 0x1A2B3F)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xDBE8F2),
                muted: Tokens.Color(hex: 0x91A5B7),
                placeholder: Tokens.Color(hex: 0x98A4B1),
                disabled: Tokens.Color(hex: 0x566677),
                accent: Tokens.Color(hex: 0xC7E9F1)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xC6D6E4),
                muted: Tokens.Color(hex: 0x7C8FA1),
                placeholder: Tokens.Color(hex: 0x637487),
                disabled: Tokens.Color(hex: 0x3D4C5C),
                accent: Tokens.Color(hex: 0x7EC8DE)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102617), border: Tokens.Color(hex: 0x2F8F5B)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x332516), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xFF7878), background: Tokens.Color(hex: 0x341519), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFFD8B0), background: Tokens.Color(hex: 0x332516), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x68D391), background: Tokens.Color(hex: 0x102617), border: Tokens.Color(hex: 0x2F8F5B)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x341519), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xC7A8FF), background: Tokens.Color(hex: 0x241C35), border: Tokens.Color(hex: 0x8F6AD8)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x718294), background: Tokens.Color(hex: 0x09111D), border: Tokens.Color(hex: 0x1A2B3F)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x566677), background: Tokens.Color(hex: 0x0C1420), border: Tokens.Color(hex: 0x172536)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x68727C), background: Tokens.Color(hex: 0x172536), border: Tokens.Color(hex: 0x23384F))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x0C1420),
                trackBorder: Tokens.Color(hex: 0x1A2B3F),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xFFD8B0),
                thumbHoverBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x91A5B7),
                background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1215686275),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x102838),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1882352941),
            linkTextHover: Tokens.Color(hex: 0xC7E9F1),
            players: [
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFFD8B0), selection: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF7373), selection: Tokens.Color(hex: 0xFF7373, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF7373, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0x7EC8DE),
                Tokens.Color(hex: 0xC7E9F1),
                Tokens.Color(hex: 0xFFD8B0),
                Tokens.Color(hex: 0xFF9933),
                Tokens.Color(hex: 0xFF7373),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x8E9CAA), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0xDBE8F2)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x91A5B7), backgroundColor: Tokens.Color(hex: 0xFFD8B0, alpha: 0.0941176471)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xC6D6E4)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x91A5B7)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0xDBE8F2)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xDBE8F2)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFF7373), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xC7A8FF)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x050911, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x172536),
                border: Tokens.Color(hex: 0x23384F),
                focusedBorder: Tokens.Color(hex: 0x7EC8DE)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Federation Light — transcribed from zed-trek.json.
    public static let federationLight = Theme(
        name: "Federation Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xF4F7FB),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFBFCFE),
                foreground: Tokens.Color(hex: 0x1E2936),
                gutterBackground: Tokens.Color(hex: 0xF1F5F9),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0862745098),
                highlightedLineBackground: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1882352941),
                activeLineNumber: Tokens.Color(hex: 0x1E3A5F),
                lineNumber: Tokens.Color(hex: 0x4A545F),
                invisible: Tokens.Color(hex: 0xBBCAD9),
                indentGuide: Tokens.Color(hex: 0xCCD8E4),
                indentGuideActive: Tokens.Color(hex: 0x257EA7),
                wrapGuide: Tokens.Color(hex: 0xCCD8E4),
                activeWrapGuide: Tokens.Color(hex: 0xFF9933),
                subheaderBackground: Tokens.Color(hex: 0xEEF4FA),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1803921569),
                documentHighlightWrite: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2274509804),
                documentHighlightBracket: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2588235294)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xD9E6F2),
                titleBarInactiveBackground: Tokens.Color(hex: 0xEAF1F8),
                tabBarBackground: Tokens.Color(hex: 0xD3E0EC),
                tabActiveBackground: Tokens.Color(hex: 0xFBFCFE),
                tabInactiveBackground: Tokens.Color(hex: 0xCAD8E6),
                statusBarBackground: Tokens.Color(hex: 0xD9E6F2),
                toolbarBackground: Tokens.Color(hex: 0xE6EEF6),
                surfaceBackground: Tokens.Color(hex: 0xE9F0F8),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFFFF),
                panelBackground: Tokens.Color(hex: 0xDEE9F3),
                panelFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuide: Tokens.Color(hex: 0xCCD8E4),
                panelIndentGuideActive: Tokens.Color(hex: 0x257EA7),
                panelIndentGuideHover: Tokens.Color(hex: 0xFF9933),
                paneFocusedBorder: Tokens.Color(hex: 0x257EA7),
                paneGroupBorder: Tokens.Color(hex: 0xBBCAD9)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xDCE8F4), hover: Tokens.Color(hex: 0xD0E1EF), active: Tokens.Color(hex: 0xC2D5E8), selected: Tokens.Color(hex: 0xC7E9F1), disabled: Tokens.Color(hex: 0xEEF3F8)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0xF4F7FB, alpha: 0.0), hover: Tokens.Color(hex: 0x257EA7, alpha: 0.0862745098), active: Tokens.Color(hex: 0x257EA7, alpha: 0.1568627451), selected: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1882352941), disabled: Tokens.Color(hex: 0xEAF1F8, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x94A9BD),
                disabled: Tokens.Color(hex: 0xD3D8DE),
                focused: Tokens.Color(hex: 0x257EA7),
                selected: Tokens.Color(hex: 0xD66B00),
                transparent: Tokens.Color(hex: 0x257EA7, alpha: 0.0),
                variant: Tokens.Color(hex: 0xBBCAD9)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x1E2936),
                muted: Tokens.Color(hex: 0x46515D),
                placeholder: Tokens.Color(hex: 0x47515B),
                disabled: Tokens.Color(hex: 0x9BA8B5),
                accent: Tokens.Color(hex: 0x1E3A5F)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x445466),
                muted: Tokens.Color(hex: 0x657587),
                placeholder: Tokens.Color(hex: 0x8090A2),
                disabled: Tokens.Color(hex: 0xAEBCCC),
                accent: Tokens.Color(hex: 0x257EA7)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x195570), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x1E5B3A), background: Tokens.Color(hex: 0xE7F6ED), border: Tokens.Color(hex: 0x77C99A)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x7C4000), background: Tokens.Color(hex: 0xFFF2D8), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xA21010), background: Tokens.Color(hex: 0xFFE5E5), border: Tokens.Color(hex: 0xC44949)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xB45D00), background: Tokens.Color(hex: 0xFFF2D8), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x2F8F5B), background: Tokens.Color(hex: 0xE7F6ED), border: Tokens.Color(hex: 0x77C99A)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x195570), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xFFE5E5), border: Tokens.Color(hex: 0xC44949)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x6F58A8), background: Tokens.Color(hex: 0xEFE9FB), border: Tokens.Color(hex: 0xB8A0DC)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x6E7D8D), background: Tokens.Color(hex: 0xEEF4FA), border: Tokens.Color(hex: 0xCCD8E4)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x9BA8B5), background: Tokens.Color(hex: 0xEEF3F8), border: Tokens.Color(hex: 0xD3D8DE)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x78838E), background: Tokens.Color(hex: 0xE5EBF1), border: Tokens.Color(hex: 0xAEBCCC))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xE6EEF6),
                trackBorder: Tokens.Color(hex: 0xBBCAD9),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0x1E3A5F),
                thumbHoverBackground: Tokens.Color(hex: 0x257EA7, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4156862745)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x53606E),
                background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1411764706),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.1803921569),
            linkTextHover: Tokens.Color(hex: 0x257EA7),
            players: [
                Player(cursor: Tokens.Color(hex: 0x257EA7), selection: Tokens.Color(hex: 0x257EA7, alpha: 0.1490196078), background: Tokens.Color(hex: 0x257EA7, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xB45D00), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x1E3A5F), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0x1E3A5F),
                Tokens.Color(hex: 0x22759A),
                Tokens.Color(hex: 0x24738B),
                Tokens.Color(hex: 0xA85400),
                Tokens.Color(hex: 0xAB5700),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x864500)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x4D5863), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x5F4B91)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0x1E2936)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x1F8EA5), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x864500)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x6E7D8D), backgroundColor: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1254901961)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x445466)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x4C5865)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x20623F)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x1F8EA5)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x1E2936)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 700),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x1E2936)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x6F58A8)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFBFCFE, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xDCE8F4),
                border: Tokens.Color(hex: 0x94A9BD),
                focusedBorder: Tokens.Color(hex: 0x257EA7)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
