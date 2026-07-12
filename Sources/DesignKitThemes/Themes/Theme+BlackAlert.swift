// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Black Alert Dark — transcribed from zed-trek.json.
    public static let blackAlertDark = Theme(
        name: "Black Alert Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x020204),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x010204),
                foreground: Tokens.Color(hex: 0xDFE7F1),
                gutterBackground: Tokens.Color(hex: 0x05070D),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0xB5A7FF, alpha: 0.1215686275),
                activeLineNumber: Tokens.Color(hex: 0x7EC8DE),
                lineNumber: Tokens.Color(hex: 0x8E9BAD),
                invisible: Tokens.Color(hex: 0x1B2433),
                indentGuide: Tokens.Color(hex: 0x121826),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0x121826),
                activeWrapGuide: Tokens.Color(hex: 0xB5A7FF),
                subheaderBackground: Tokens.Color(hex: 0x05070D),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1411764706),
                documentHighlightWrite: Tokens.Color(hex: 0xB5A7FF, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x080B12),
                titleBarInactiveBackground: Tokens.Color(hex: 0x05070D),
                tabBarBackground: Tokens.Color(hex: 0x020204),
                tabActiveBackground: Tokens.Color(hex: 0x10121C),
                tabInactiveBackground: Tokens.Color(hex: 0x05070D),
                statusBarBackground: Tokens.Color(hex: 0x080B12),
                toolbarBackground: Tokens.Color(hex: 0x080B12),
                surfaceBackground: Tokens.Color(hex: 0x161C2E),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x22273B),
                panelBackground: Tokens.Color(hex: 0x080B12),
                panelFocusedBorder: Tokens.Color(hex: 0xC7E9F1),
                panelIndentGuide: Tokens.Color(hex: 0x121826),
                panelIndentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuideHover: Tokens.Color(hex: 0xB5A7FF),
                paneFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                paneGroupBorder: Tokens.Color(hex: 0x121826)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x10121C), hover: Tokens.Color(hex: 0x151C2B), active: Tokens.Color(hex: 0x1B273A), selected: Tokens.Color(hex: 0x252041), disabled: Tokens.Color(hex: 0x080B12)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x000000, alpha: 0.0), hover: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0941176471), active: Tokens.Color(hex: 0x7EC8DE, alpha: 0.168627451), selected: Tokens.Color(hex: 0xB5A7FF, alpha: 0.2), disabled: Tokens.Color(hex: 0x10121C, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x1A2232),
                disabled: Tokens.Color(hex: 0x10121C),
                focused: Tokens.Color(hex: 0x7EC8DE),
                selected: Tokens.Color(hex: 0xB5A7FF),
                transparent: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0),
                variant: Tokens.Color(hex: 0x121826)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xDFE7F1),
                muted: Tokens.Color(hex: 0x8E9CAD),
                placeholder: Tokens.Color(hex: 0x8F9BAC),
                disabled: Tokens.Color(hex: 0x4F5D70),
                accent: Tokens.Color(hex: 0xC7E9F1)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xC5D1DF),
                muted: Tokens.Color(hex: 0x768699),
                placeholder: Tokens.Color(hex: 0x5D6B7F),
                disabled: Tokens.Color(hex: 0x364253),
                accent: Tokens.Color(hex: 0x7EC8DE)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x4EE6A6), background: Tokens.Color(hex: 0x0F2A21), border: Tokens.Color(hex: 0x2F9F68)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x33210D), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x341519), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0x33210D), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x4EE6A6), background: Tokens.Color(hex: 0x0F2A21), border: Tokens.Color(hex: 0x2F9F68)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x341519), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xB5A7FF), background: Tokens.Color(hex: 0x211D36), border: Tokens.Color(hex: 0x7566D8)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x4F5D70), background: Tokens.Color(hex: 0x05070D), border: Tokens.Color(hex: 0x121826)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x364253), background: Tokens.Color(hex: 0x05070D), border: Tokens.Color(hex: 0x10121C)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x68727C), background: Tokens.Color(hex: 0x10121C), border: Tokens.Color(hex: 0x1A2232))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x020204),
                trackBorder: Tokens.Color(hex: 0x121826),
                thumbBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xB5A7FF),
                thumbHoverBackground: Tokens.Color(hex: 0xC7E9F1, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xB5A7FF, alpha: 0.4)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x8B99AB),
                background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1137254902),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x102838),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0xB5A7FF, alpha: 0.1803921569),
            linkTextHover: Tokens.Color(hex: 0xC7E9F1),
            players: [
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xB5A7FF), selection: Tokens.Color(hex: 0xB5A7FF, alpha: 0.1490196078), background: Tokens.Color(hex: 0xB5A7FF, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x4EE6A6), selection: Tokens.Color(hex: 0x4EE6A6, alpha: 0.1490196078), background: Tokens.Color(hex: 0x4EE6A6, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0x7EC8DE),
                Tokens.Color(hex: 0xC7E9F1),
                Tokens.Color(hex: 0xB5A7FF),
                Tokens.Color(hex: 0x4EE6A6),
                Tokens.Color(hex: 0xFF9933),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0xB5A7FF)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x8C98AA), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0xB5A7FF)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0xDFE7F1)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x8B99AB), backgroundColor: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0941176471)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xC5D1DF)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x8B99AB)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xB5A7FF), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x4EE6A6)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0xDFE7F1)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xDFE7F1)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFF7373), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xB5A7FF)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x010204, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x10121C),
                border: Tokens.Color(hex: 0x1A2232),
                focusedBorder: Tokens.Color(hex: 0x7EC8DE)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Black Alert Light — transcribed from zed-trek.json.
    public static let blackAlertLight = Theme(
        name: "Black Alert Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xF7F8FB),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFCFDFF),
                foreground: Tokens.Color(hex: 0x1E2530),
                gutterBackground: Tokens.Color(hex: 0xE9EDF3),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0705882353),
                highlightedLineBackground: Tokens.Color(hex: 0xB5A7FF, alpha: 0.1294117647),
                activeLineNumber: Tokens.Color(hex: 0x1B5D7B),
                lineNumber: Tokens.Color(hex: 0x474F5A),
                invisible: Tokens.Color(hex: 0xC1CAD6),
                indentGuide: Tokens.Color(hex: 0xD3D8DE),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0xD3D8DE),
                activeWrapGuide: Tokens.Color(hex: 0xB5A7FF),
                subheaderBackground: Tokens.Color(hex: 0xEEF2F6),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078),
                documentHighlightWrite: Tokens.Color(hex: 0xB5A7FF, alpha: 0.168627451),
                documentHighlightBracket: Tokens.Color(hex: 0x09090B, alpha: 0.1333333333)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xD8DFE8),
                titleBarInactiveBackground: Tokens.Color(hex: 0xE9EDF3),
                tabBarBackground: Tokens.Color(hex: 0xCFD8E4),
                tabActiveBackground: Tokens.Color(hex: 0xFCFDFF),
                tabInactiveBackground: Tokens.Color(hex: 0xD8DFE8),
                statusBarBackground: Tokens.Color(hex: 0xD8DFE8),
                toolbarBackground: Tokens.Color(hex: 0xE1E6EE),
                surfaceBackground: Tokens.Color(hex: 0xE9EDF3),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFFFF),
                panelBackground: Tokens.Color(hex: 0xE0E5ED),
                panelFocusedBorder: Tokens.Color(hex: 0x257EA7),
                panelIndentGuide: Tokens.Color(hex: 0xD3D8DE),
                panelIndentGuideActive: Tokens.Color(hex: 0x257EA7),
                panelIndentGuideHover: Tokens.Color(hex: 0xB5A7FF),
                paneFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                paneGroupBorder: Tokens.Color(hex: 0xC1CAD6)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xDFE6EE), hover: Tokens.Color(hex: 0xD3DCE7), active: Tokens.Color(hex: 0xC3CFDD), selected: Tokens.Color(hex: 0xD9D4FF), disabled: Tokens.Color(hex: 0xEEF2F6)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0xF7F8FB, alpha: 0.0), hover: Tokens.Color(hex: 0x257EA7, alpha: 0.0862745098), active: Tokens.Color(hex: 0x257EA7, alpha: 0.1568627451), selected: Tokens.Color(hex: 0xB5A7FF, alpha: 0.2196078431), disabled: Tokens.Color(hex: 0xDFE6EE, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0xA9B4C2),
                disabled: Tokens.Color(hex: 0xD3D8DE),
                focused: Tokens.Color(hex: 0x257EA7),
                selected: Tokens.Color(hex: 0x866FFF),
                transparent: Tokens.Color(hex: 0x09090B, alpha: 0.0),
                variant: Tokens.Color(hex: 0xC1CAD6)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x1E2530),
                muted: Tokens.Color(hex: 0x474F5B),
                placeholder: Tokens.Color(hex: 0x474F5A),
                disabled: Tokens.Color(hex: 0x98A2AE),
                accent: Tokens.Color(hex: 0x09090B)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x4A5766),
                muted: Tokens.Color(hex: 0x6F7D8D),
                placeholder: Tokens.Color(hex: 0x8C98A6),
                disabled: Tokens.Color(hex: 0xB7C0CA),
                accent: Tokens.Color(hex: 0x257EA7)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x18536E), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x1A5839), background: Tokens.Color(hex: 0xE5F8EE), border: Tokens.Color(hex: 0x4EE6A6)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x7A3F00), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0x9E1010), background: Tokens.Color(hex: 0xFFE5E5), border: Tokens.Color(hex: 0xC44949)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xB45D00), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x2F9F68), background: Tokens.Color(hex: 0xE5F8EE), border: Tokens.Color(hex: 0x4EE6A6)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x18536E), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xFFE5E5), border: Tokens.Color(hex: 0xC44949)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x6D5ED4), background: Tokens.Color(hex: 0xEFEDFF), border: Tokens.Color(hex: 0xB5A7FF)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x7B8796), background: Tokens.Color(hex: 0xEEF2F6), border: Tokens.Color(hex: 0xD3D8DE)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x98A2AE), background: Tokens.Color(hex: 0xEEF2F6), border: Tokens.Color(hex: 0xD3D8DE)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x747B86), background: Tokens.Color(hex: 0xE6EBF1), border: Tokens.Color(hex: 0xB7C0CA))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xE1E6EE),
                trackBorder: Tokens.Color(hex: 0xD3D8DE),
                thumbBackground: Tokens.Color(hex: 0x09090B, alpha: 0.4),
                thumbBorder: Tokens.Color(hex: 0x257EA7),
                thumbHoverBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.7019607843)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xB5A7FF, alpha: 0.4)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x5B6675),
                background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1254901961),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0xB5A7FF, alpha: 0.2196078431),
            linkTextHover: Tokens.Color(hex: 0x257EA7),
            players: [
                Player(cursor: Tokens.Color(hex: 0x257EA7), selection: Tokens.Color(hex: 0x257EA7, alpha: 0.1490196078), background: Tokens.Color(hex: 0x257EA7, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x6D5ED4), selection: Tokens.Color(hex: 0xB5A7FF, alpha: 0.1490196078), background: Tokens.Color(hex: 0xB5A7FF, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x2F9F68), selection: Tokens.Color(hex: 0x4EE6A6, alpha: 0.1490196078), background: Tokens.Color(hex: 0x4EE6A6, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xB45D00), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
            ],
            accents: [
                Tokens.Color(hex: 0x09090B),
                Tokens.Color(hex: 0x217196),
                Tokens.Color(hex: 0x24738B),
                Tokens.Color(hex: 0x6446FF),
                Tokens.Color(hex: 0x117A4E),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x503ECB)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x4F5863), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x503ECB)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0x1E2530)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x1F8EA5), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x09090B), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x864500)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x7B8796), backgroundColor: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1254901961)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x4A5766)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x4F5865)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x09090B), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x1E6340)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x1F8EA5)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x1E2530)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x09090B), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x1E2530)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x6D5ED4)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFCFDFF, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xDFE6EE),
                border: Tokens.Color(hex: 0xA9B4C2),
                focusedBorder: Tokens.Color(hex: 0x257EA7)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
