// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// LCARS High Contrast Dark — transcribed from zed-trek.json.
    public static let lcarsHighContrastDark = Theme(
        name: "LCARS High Contrast Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x05060A),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x080A0F),
                foreground: Tokens.Color(hex: 0xF2E7D8),
                gutterBackground: Tokens.Color(hex: 0x0D1018),
                activeLineBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.0800),
                highlightedLineBackground: Tokens.Color(hex: 0x121725, alpha: 1.0000),
                activeLineNumber: Tokens.Color(hex: 0xFFCC66),
                lineNumber: Tokens.Color(hex: 0x989FAB),
                invisible: Tokens.Color(hex: 0x3B4252),
                indentGuide: Tokens.Color(hex: 0x252B36),
                indentGuideActive: Tokens.Color(hex: 0xFF9933),
                wrapGuide: Tokens.Color(hex: 0x1B2230),
                activeWrapGuide: Tokens.Color(hex: 0xFF9933),
                subheaderBackground: Tokens.Color(hex: 0x111827),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078),
                documentHighlightWrite: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0xFFCC66, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x0D1018),
                titleBarInactiveBackground: Tokens.Color(hex: 0x0D1018),
                tabBarBackground: Tokens.Color(hex: 0x05060A),
                tabActiveBackground: Tokens.Color(hex: 0x111827),
                tabInactiveBackground: Tokens.Color(hex: 0x0D1018),
                statusBarBackground: Tokens.Color(hex: 0x0D1018),
                toolbarBackground: Tokens.Color(hex: 0x0D1018),
                surfaceBackground: Tokens.Color(hex: 0x161F33),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x1D2A43),
                panelBackground: Tokens.Color(hex: 0x0C111B),
                panelFocusedBorder: Tokens.Color(hex: 0xFF9933),
                panelIndentGuide: Tokens.Color(hex: 0x252B36),
                panelIndentGuideActive: Tokens.Color(hex: 0xFF9933),
                panelIndentGuideHover: Tokens.Color(hex: 0xFFD8B0),
                paneFocusedBorder: Tokens.Color(hex: 0xFF9933),
                paneGroupBorder: Tokens.Color(hex: 0x1B2230)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x151A24), hover: Tokens.Color(hex: 0x1E2636), active: Tokens.Color(hex: 0x372216), selected: Tokens.Color(hex: 0x2A1E14), disabled: Tokens.Color(hex: 0x0E121A)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x000000, alpha: 0.0), hover: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1000), active: Tokens.Color(hex: 0xFF9933, alpha: 0.1600), selected: Tokens.Color(hex: 0xFF9933, alpha: 0.1600), disabled: Tokens.Color(hex: 0x000000, alpha: 0.0))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x2A2030),
                disabled: Tokens.Color(hex: 0x1B1F2A),
                focused: Tokens.Color(hex: 0xFF9933),
                selected: Tokens.Color(hex: 0xFFD8B0),
                transparent: Tokens.Color(hex: 0x000000, alpha: 0.0),
                variant: Tokens.Color(hex: 0x252B36)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xF2E7D8),
                muted: Tokens.Color(hex: 0x9AA1AE),
                placeholder: Tokens.Color(hex: 0x99A1AD),
                disabled: Tokens.Color(hex: 0x4F5868),
                accent: Tokens.Color(hex: 0xFFCC66)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xD8DEE8),
                muted: Tokens.Color(hex: 0x8B93A1),
                placeholder: Tokens.Color(hex: 0x687282),
                disabled: Tokens.Color(hex: 0x3B4252),
                accent: Tokens.Color(hex: 0xFF9933)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1019607843), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x4EE6A6), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1019607843), border: Tokens.Color(hex: 0x257EA7)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFFCC66), background: Tokens.Color(hex: 0xFFCC66, alpha: 0.1411764706), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xF37F7F), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1411764706), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFFCC66), background: Tokens.Color(hex: 0xFF9933, alpha: 0.1607843137), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1215686275), border: Tokens.Color(hex: 0x257EA7)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0xFFB66B), background: Tokens.Color(hex: 0xFF9933, alpha: 0.1411764706), border: Tokens.Color(hex: 0xFF9933)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1411764706), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xCC99FF), background: Tokens.Color(hex: 0xCC99FF, alpha: 0.1215686275), border: Tokens.Color(hex: 0x8A63E6)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x687282), background: Tokens.Color(hex: 0x10141D), border: Tokens.Color(hex: 0x1B2230)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x687282), background: Tokens.Color(hex: 0x10141D), border: Tokens.Color(hex: 0x1B2230)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x687282), background: Tokens.Color(hex: 0x10141D), border: Tokens.Color(hex: 0x252B36))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x10141D),
                trackBorder: Tokens.Color(hex: 0x1B2230),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6666666667),
                thumbBorder: Tokens.Color(hex: 0xFFCC66, alpha: 0.2),
                thumbHoverBackground: Tokens.Color(hex: 0xFFCC66, alpha: 0.8)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFFD8B0, alpha: 0.5000)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1019607843),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1019607843),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.2509803922),
            linkTextHover: Tokens.Color(hex: 0xFFD8B0),
            players: [
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.3333333333), background: Tokens.Color(hex: 0x2A1E14)),
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2666666667), background: Tokens.Color(hex: 0x0F2530)),
                Player(cursor: Tokens.Color(hex: 0xCC99FF), selection: Tokens.Color(hex: 0xCC99FF, alpha: 0.2666666667), background: Tokens.Color(hex: 0x211A38)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2666666667), background: Tokens.Color(hex: 0x2A1216)),
            ],
            accents: [
                    Tokens.Color(hex: 0xFF9933),
                    Tokens.Color(hex: 0xFFD8B0),
                    Tokens.Color(hex: 0xFFCC66),
                    Tokens.Color(hex: 0x7EC8DE),
                    Tokens.Color(hex: 0xCC99FF),
                ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0xCC99FF)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x939BA9), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0xCC99FF), fontWeight: 700),
                "embedded": SyntaxStyle(backgroundColor: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1019607843)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "hint": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933), fontWeight: 700),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFFB66B), fontWeight: 600),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 600),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66), fontWeight: 700),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xD8DEE8), fontWeight: 600),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x939BA8)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66), fontWeight: 700),
                "punctuation.delimiter": SyntaxStyle(color: Tokens.Color(hex: 0x687282)),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66), fontWeight: 600),
                "strong": SyntaxStyle(fontWeight: 700),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x9CEAF7)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xF2E7D8)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933), fontWeight: 700),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 600),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x080A0F, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x151A24),
                border: Tokens.Color(hex: 0x2A2030),
                focusedBorder: Tokens.Color(hex: 0xFF9933)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// LCARS High Contrast Light — transcribed from zed-trek.json.
    public static let lcarsHighContrastLight = Theme(
        name: "LCARS High Contrast Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xFBF7F1),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFFFCF4),
                foreground: Tokens.Color(hex: 0x2A1F0A),
                gutterBackground: Tokens.Color(hex: 0xF4ECDD),
                activeLineBackground: Tokens.Color(hex: 0xC16E1D, alpha: 0.0700),
                highlightedLineBackground: Tokens.Color(hex: 0xFAF2DE, alpha: 1.0000),
                activeLineNumber: Tokens.Color(hex: 0x814914),
                lineNumber: Tokens.Color(hex: 0x614A29),
                invisible: Tokens.Color(hex: 0xD3B894),
                indentGuide: Tokens.Color(hex: 0xFFD8B0),
                indentGuideActive: Tokens.Color(hex: 0xFF9933),
                wrapGuide: Tokens.Color(hex: 0xF1C18A),
                activeWrapGuide: Tokens.Color(hex: 0xFF9933),
                subheaderBackground: Tokens.Color(hex: 0xFFE5C2),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2),
                documentHighlightWrite: Tokens.Color(hex: 0xFFCC66, alpha: 0.3333333333),
                documentHighlightBracket: Tokens.Color(hex: 0xFF9933, alpha: 0.3019607843)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xE5D2A5),
                titleBarInactiveBackground: Tokens.Color(hex: 0xFFE8CC),
                tabBarBackground: Tokens.Color(hex: 0xEFE4CF),
                tabActiveBackground: Tokens.Color(hex: 0xFFFCF4),
                tabInactiveBackground: Tokens.Color(hex: 0xE5D2A5),
                statusBarBackground: Tokens.Color(hex: 0xE5D2A5),
                toolbarBackground: Tokens.Color(hex: 0xEFE4CF),
                surfaceBackground: Tokens.Color(hex: 0xF4ECDD),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFCF4),
                panelBackground: Tokens.Color(hex: 0xEFE4CF),
                panelFocusedBorder: Tokens.Color(hex: 0x257EA7),
                panelIndentGuide: Tokens.Color(hex: 0xFFD8B0),
                panelIndentGuideActive: Tokens.Color(hex: 0xFF9933),
                panelIndentGuideHover: Tokens.Color(hex: 0x257EA7),
                paneFocusedBorder: Tokens.Color(hex: 0xFF9933),
                paneGroupBorder: Tokens.Color(hex: 0xFFD8B0)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xF4ECDD), hover: Tokens.Color(hex: 0xE5D2A5), active: Tokens.Color(hex: 0xD8B98A), selected: Tokens.Color(hex: 0xFFE4B5), disabled: Tokens.Color(hex: 0xF7E7D5)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x000000, alpha: 0.0), hover: Tokens.Color(hex: 0xC16E1D, alpha: 0.1000), active: Tokens.Color(hex: 0xC16E1D, alpha: 0.1800), selected: Tokens.Color(hex: 0xFF9933, alpha: 0.2200), disabled: Tokens.Color(hex: 0x000000, alpha: 0.0))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x8F6E3C),
                disabled: Tokens.Color(hex: 0xE4E4E7),
                focused: Tokens.Color(hex: 0xC16E1D),
                selected: Tokens.Color(hex: 0xD16900),
                transparent: Tokens.Color(hex: 0x000000, alpha: 0.0),
                variant: Tokens.Color(hex: 0xB8945A)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x2A1F0A),
                muted: Tokens.Color(hex: 0x644A1A),
                placeholder: Tokens.Color(hex: 0x614A29),
                disabled: Tokens.Color(hex: 0xB8945A),
                accent: Tokens.Color(hex: 0x5A3B10)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x4A3A18),
                muted: Tokens.Color(hex: 0x5F4B24),
                placeholder: Tokens.Color(hex: 0xA99A8B),
                disabled: Tokens.Color(hex: 0xD3C2B2),
                accent: Tokens.Color(hex: 0xA85A15)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x125562), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x195830), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x7A3F00), background: Tokens.Color(hex: 0xFFCC66, alpha: 0.2392156863), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0x853434), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1215686275), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xA85500), background: Tokens.Color(hex: 0xFFCC66, alpha: 0.2509803922), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x0E7C61), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x7A3F00), background: Tokens.Color(hex: 0xFFCC66, alpha: 0.2392156863), border: Tokens.Color(hex: 0xFF9933)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xD94848), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1215686275), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x5A3FD6), background: Tokens.Color(hex: 0xF1E8FF), border: Tokens.Color(hex: 0xCC99FF)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0xA99A8B), background: Tokens.Color(hex: 0xFFF1DF), border: Tokens.Color(hex: 0xF1C18A)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x9A8B7C), background: Tokens.Color(hex: 0xFFF1DF), border: Tokens.Color(hex: 0xFFD8B0)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x9A8B7C), background: Tokens.Color(hex: 0xFFF1DF), border: Tokens.Color(hex: 0xD3C2B2))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xFFE8CC),
                trackBorder: Tokens.Color(hex: 0xFFD8B0),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xFF9933, alpha: 0.3019607843),
                thumbHoverBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.8)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.4000)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7, alpha: 0.6666666667),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.2),
            linkTextHover: Tokens.Color(hex: 0x1E3A5F),
            players: [
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.4), background: Tokens.Color(hex: 0xFFF0D8)),
                Player(cursor: Tokens.Color(hex: 0x257EA7), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.4), background: Tokens.Color(hex: 0xE6F5F7)),
                Player(cursor: Tokens.Color(hex: 0x8A63E6), selection: Tokens.Color(hex: 0xCC99FF, alpha: 0.4), background: Tokens.Color(hex: 0xF1E8FF)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2509803922), background: Tokens.Color(hex: 0xFDECEC)),
            ],
            accents: [
                    Tokens.Color(hex: 0x9E5A18),
                    Tokens.Color(hex: 0xA85400),
                    Tokens.Color(hex: 0x8F5F00),
                    Tokens.Color(hex: 0x197487),
                    Tokens.Color(hex: 0x8352BA),
                ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x6E40A0)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0xB65B00), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x614B29), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x6E40A0), fontWeight: 700),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x5A3FD6), fontWeight: 700),
                "embedded": SyntaxStyle(backgroundColor: Tokens.Color(hex: 0xE6F5F7, alpha: 0.4)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x884300), fontWeight: 700),
                "hint": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x814914), fontWeight: 700),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xE06600), fontWeight: 600),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x864500), fontWeight: 600),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0xC45100), fontWeight: 700),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x4A3A18), fontWeight: 600),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x644A1A)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xE06600), fontWeight: 700),
                "punctuation.delimiter": SyntaxStyle(color: Tokens.Color(hex: 0xA99A8B)),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x764F16)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xA85500), fontWeight: 600),
                "strong": SyntaxStyle(fontWeight: 700),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x884300), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x087A8C)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x155E6D), fontWeight: 700),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x2A1F0A)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xD85F00), fontWeight: 700),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x8A63E6), fontWeight: 600),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFFFCF4, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xF4ECDD),
                border: Tokens.Color(hex: 0x8F6E3C),
                focusedBorder: Tokens.Color(hex: 0xC16E1D)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
