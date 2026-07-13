// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Mission Control Dark — transcribed from zed-trek.json.
    public static let missionControlDark = Theme(
        name: "Mission Control Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x040913),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x03070D),
                foreground: Tokens.Color(hex: 0xDCEBF6),
                gutterBackground: Tokens.Color(hex: 0x07101B),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0710),
                highlightedLineBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.1220),
                activeLineNumber: Tokens.Color(hex: 0xFF9933),
                lineNumber: Tokens.Color(hex: 0x8F9FAF),
                invisible: Tokens.Color(hex: 0x1F3146),
                indentGuide: Tokens.Color(hex: 0x15263A),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0x15263A),
                activeWrapGuide: Tokens.Color(hex: 0xFFD8B0),
                subheaderBackground: Tokens.Color(hex: 0x07101B),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1411764706),
                documentHighlightWrite: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x0D2038),
                titleBarInactiveBackground: Tokens.Color(hex: 0x09111D),
                tabBarBackground: Tokens.Color(hex: 0x040913),
                tabActiveBackground: Tokens.Color(hex: 0x121D2D),
                tabInactiveBackground: Tokens.Color(hex: 0x07101B),
                statusBarBackground: Tokens.Color(hex: 0x0D2038),
                toolbarBackground: Tokens.Color(hex: 0x09111D),
                surfaceBackground: Tokens.Color(hex: 0x122039),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x1B2C44),
                panelBackground: Tokens.Color(hex: 0x09111D),
                panelFocusedBorder: Tokens.Color(hex: 0xC7E9F1),
                panelIndentGuide: Tokens.Color(hex: 0x15263A),
                panelIndentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuideHover: Tokens.Color(hex: 0xFF9933),
                paneFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                paneGroupBorder: Tokens.Color(hex: 0x15263A)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x121D2D), hover: Tokens.Color(hex: 0x17283D), active: Tokens.Color(hex: 0x1C354F), selected: Tokens.Color(hex: 0x4B3520), disabled: Tokens.Color(hex: 0x09111D)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x000000, alpha: 0.0), hover: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0940), active: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1690), selected: Tokens.Color(hex: 0xFF9933, alpha: 0.2000), disabled: Tokens.Color(hex: 0x121D2D, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x1C324A),
                disabled: Tokens.Color(hex: 0x142235),
                focused: Tokens.Color(hex: 0x7EC8DE),
                selected: Tokens.Color(hex: 0xFF9933),
                transparent: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0),
                variant: Tokens.Color(hex: 0x15263A)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xDCEBF6),
                muted: Tokens.Color(hex: 0x8DA2B3),
                placeholder: Tokens.Color(hex: 0x93A1AF),
                disabled: Tokens.Color(hex: 0x53677A),
                accent: Tokens.Color(hex: 0xC7E9F1)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xC6D8E5),
                muted: Tokens.Color(hex: 0x7A8FA2),
                placeholder: Tokens.Color(hex: 0x5F7285),
                disabled: Tokens.Color(hex: 0x3A4B5D),
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
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xC7A8FF), background: Tokens.Color(hex: 0x231B35), border: Tokens.Color(hex: 0x8F6AD8)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x53677A), background: Tokens.Color(hex: 0x07101B), border: Tokens.Color(hex: 0x15263A)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x3A4B5D), background: Tokens.Color(hex: 0x07101B), border: Tokens.Color(hex: 0x121D2D)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x68727C), background: Tokens.Color(hex: 0x121D2D), border: Tokens.Color(hex: 0x1C324A))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x040913),
                trackBorder: Tokens.Color(hex: 0x15263A),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xFFD8B0),
                thumbHoverBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4000)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x8DA2B3),
                background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1137254902),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x102838),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.1803921569),
            linkTextHover: Tokens.Color(hex: 0xC7E9F1),
            players: [
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x4EE6A6), selection: Tokens.Color(hex: 0x4EE6A6, alpha: 0.1490196078), background: Tokens.Color(hex: 0x4EE6A6, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF7373), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                    Tokens.Color(hex: 0x7EC8DE),
                    Tokens.Color(hex: 0xC7E9F1),
                    Tokens.Color(hex: 0xFF9933),
                    Tokens.Color(hex: 0xFFD8B0),
                    Tokens.Color(hex: 0x4EE6A6),
                ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x8C9BAA), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0xC7A8FF)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0xDCEBF6)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x8DA2B3), backgroundColor: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0941176471)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xC6D8E5)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x8DA2B3)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x4EE6A6)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0xDCEBF6)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xDCEBF6)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFF7373), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xC7A8FF)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x03070D, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x121D2D),
                border: Tokens.Color(hex: 0x1C324A),
                focusedBorder: Tokens.Color(hex: 0x7EC8DE)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Mission Control Light — transcribed from zed-trek.json.
    public static let missionControlLight = Theme(
        name: "Mission Control Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xF7FAFC),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFBFDFF),
                foreground: Tokens.Color(hex: 0x223142),
                gutterBackground: Tokens.Color(hex: 0xEDF4FA),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0710),
                highlightedLineBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.1330),
                activeLineNumber: Tokens.Color(hex: 0x1B5D7B),
                lineNumber: Tokens.Color(hex: 0x45535F),
                invisible: Tokens.Color(hex: 0xC6D5E2),
                indentGuide: Tokens.Color(hex: 0xD3D8DE),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0xD3D8DE),
                activeWrapGuide: Tokens.Color(hex: 0xFF9933),
                subheaderBackground: Tokens.Color(hex: 0xEEF3F7),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078),
                documentHighlightWrite: Tokens.Color(hex: 0xFF9933, alpha: 0.1607843137),
                documentHighlightBracket: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2509803922)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xD7E7F0),
                titleBarInactiveBackground: Tokens.Color(hex: 0xEAF2F8),
                tabBarBackground: Tokens.Color(hex: 0xDFEAF3),
                tabActiveBackground: Tokens.Color(hex: 0xFBFDFF),
                tabInactiveBackground: Tokens.Color(hex: 0xCEDCE8),
                statusBarBackground: Tokens.Color(hex: 0xD7E7F0),
                toolbarBackground: Tokens.Color(hex: 0xEAF2F8),
                surfaceBackground: Tokens.Color(hex: 0xE8F1F9),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFFFF),
                panelBackground: Tokens.Color(hex: 0xDDE9F4),
                panelFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuide: Tokens.Color(hex: 0xD3D8DE),
                panelIndentGuideActive: Tokens.Color(hex: 0x257EA7),
                panelIndentGuideHover: Tokens.Color(hex: 0xFF9933),
                paneFocusedBorder: Tokens.Color(hex: 0x257EA7),
                paneGroupBorder: Tokens.Color(hex: 0xB8CAD9)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xDCE7F0), hover: Tokens.Color(hex: 0xD1E0EB), active: Tokens.Color(hex: 0xC0D2E2), selected: Tokens.Color(hex: 0xFFD8B0), disabled: Tokens.Color(hex: 0xEEF3F7)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0xF7FAFC, alpha: 0.0), hover: Tokens.Color(hex: 0x257EA7, alpha: 0.0860), active: Tokens.Color(hex: 0x257EA7, alpha: 0.1570), selected: Tokens.Color(hex: 0xFF9933, alpha: 0.1920), disabled: Tokens.Color(hex: 0xDCE7F0, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0xA8BFD4),
                disabled: Tokens.Color(hex: 0xD3D8DE),
                focused: Tokens.Color(hex: 0x257EA7),
                selected: Tokens.Color(hex: 0xDB6E00),
                transparent: Tokens.Color(hex: 0x257EA7, alpha: 0.0),
                variant: Tokens.Color(hex: 0xC6D5E2)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x223142),
                muted: Tokens.Color(hex: 0x465360),
                placeholder: Tokens.Color(hex: 0x45535F),
                disabled: Tokens.Color(hex: 0x98A6B5),
                accent: Tokens.Color(hex: 0x1E3A5F)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x4A5766),
                muted: Tokens.Color(hex: 0x708194),
                placeholder: Tokens.Color(hex: 0x8E9DAD),
                disabled: Tokens.Color(hex: 0xB7C1CC),
                accent: Tokens.Color(hex: 0x257EA7)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x195772), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x1C5D3C), background: Tokens.Color(hex: 0xE5F8EE), border: Tokens.Color(hex: 0x4EE6A6)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x7F4200), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xA51010), background: Tokens.Color(hex: 0xFFE5E5), border: Tokens.Color(hex: 0xC44949)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xB45D00), background: Tokens.Color(hex: 0xFFF0CF), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x2F9F68), background: Tokens.Color(hex: 0xE5F8EE), border: Tokens.Color(hex: 0x4EE6A6)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x195772), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xFFE5E5), border: Tokens.Color(hex: 0xC44949)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x6B72C9), background: Tokens.Color(hex: 0xEDF0FF), border: Tokens.Color(hex: 0xA9AEF0)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x8192A3), background: Tokens.Color(hex: 0xEEF3F7), border: Tokens.Color(hex: 0xD3D8DE)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x98A6B5), background: Tokens.Color(hex: 0xEFF2F5), border: Tokens.Color(hex: 0xD3D8DE)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x747F8C), background: Tokens.Color(hex: 0xE6EBF1), border: Tokens.Color(hex: 0xB7C1CC))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xE6EFF7),
                trackBorder: Tokens.Color(hex: 0xD3D8DE),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0x1E3A5F),
                thumbHoverBackground: Tokens.Color(hex: 0x257EA7, alpha: 0.7019607843)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4310)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x5F7183),
                background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1333333333),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.2509803922),
            linkTextHover: Tokens.Color(hex: 0x257EA7),
            players: [
                Player(cursor: Tokens.Color(hex: 0x257EA7), selection: Tokens.Color(hex: 0x257EA7, alpha: 0.1490196078), background: Tokens.Color(hex: 0x257EA7, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xB45D00), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF9933, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x2F9F68), selection: Tokens.Color(hex: 0x4EE6A6, alpha: 0.1490196078), background: Tokens.Color(hex: 0x4EE6A6, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                    Tokens.Color(hex: 0x1E3A5F),
                    Tokens.Color(hex: 0x22759A),
                    Tokens.Color(hex: 0x25778F),
                    Tokens.Color(hex: 0xAD5700),
                    Tokens.Color(hex: 0x127F51),
                ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x864500)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x4B5966), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x434BB6)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0x223142)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x1F8EA5), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x864500)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x8192A3), backgroundColor: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1254901961)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x4A5766)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x4B5967)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x1E6340)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x1F8EA5)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x223142)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x223142)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x6B72C9)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFBFDFF, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xDCE7F0),
                border: Tokens.Color(hex: 0xA8BFD4),
                focusedBorder: Tokens.Color(hex: 0x257EA7)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
