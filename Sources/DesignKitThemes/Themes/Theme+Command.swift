// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Command Dark — transcribed from zed-trek.json.
    public static let commandDark = Theme(
        name: "Command Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x09090B),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x09090B),
                foreground: Tokens.Color(hex: 0xD3D8DE),
                gutterBackground: Tokens.Color(hex: 0x09090B),
                activeLineBackground: Tokens.Color(hex: 0x1E3A5F, alpha: 0.4),
                highlightedLineBackground: Tokens.Color(hex: 0x18181B),
                activeLineNumber: Tokens.Color(hex: 0xFFD8B0),
                lineNumber: Tokens.Color(hex: 0x9999A3),
                invisible: Tokens.Color(hex: 0x52525B),
                indentGuide: Tokens.Color(hex: 0x27272A),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0x27272A),
                activeWrapGuide: Tokens.Color(hex: 0xFF9933),
                subheaderBackground: Tokens.Color(hex: 0x18181B),
                documentHighlightRead: Tokens.Color(hex: 0x257EA7, alpha: 0.3019607843),
                documentHighlightWrite: Tokens.Color(hex: 0xFF9933, alpha: 0.3019607843),
                documentHighlightBracket: Tokens.Color(hex: 0xFF9933, alpha: 0.3490196078)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x0D0D12),
                titleBarInactiveBackground: Tokens.Color(hex: 0x09090B),
                tabBarBackground: Tokens.Color(hex: 0x0D0D12),
                tabActiveBackground: Tokens.Color(hex: 0x09090B),
                tabInactiveBackground: Tokens.Color(hex: 0x18181B),
                statusBarBackground: Tokens.Color(hex: 0x18181B),
                toolbarBackground: Tokens.Color(hex: 0x0D0D12),
                surfaceBackground: Tokens.Color(hex: 0x1A1A1E),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x26262B),
                panelBackground: Tokens.Color(hex: 0x131318),
                panelFocusedBorder: Tokens.Color(hex: 0xFF9933),
                panelIndentGuide: Tokens.Color(hex: 0x27272A),
                panelIndentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuideHover: Tokens.Color(hex: 0xFFD8B0),
                paneFocusedBorder: Tokens.Color(hex: 0xFF9933),
                paneGroupBorder: Tokens.Color(hex: 0x1E3A5F)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x18181B), hover: Tokens.Color(hex: 0x1E3A5F, alpha: 0.4), active: Tokens.Color(hex: 0x1E3A5F), selected: Tokens.Color(hex: 0x1E3A5F), disabled: Tokens.Color(hex: 0x101014)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x000000, alpha: 0.0), hover: Tokens.Color(hex: 0x1E3A5F, alpha: 0.4), active: Tokens.Color(hex: 0xFF9933, alpha: 0.2), selected: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), disabled: Tokens.Color(hex: 0x000000, alpha: 0.0))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x27272A),
                disabled: Tokens.Color(hex: 0x18181B),
                focused: Tokens.Color(hex: 0xFF9933),
                selected: Tokens.Color(hex: 0xFFD8B0),
                transparent: Tokens.Color(hex: 0x000000, alpha: 0.0),
                variant: Tokens.Color(hex: 0x1E3A5F)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xD3D8DE),
                muted: Tokens.Color(hex: 0xA3A3AC),
                placeholder: Tokens.Color(hex: 0xA3A3AA),
                disabled: Tokens.Color(hex: 0x52525B),
                accent: Tokens.Color(hex: 0xFFD8B0)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xD3D8DE),
                muted: Tokens.Color(hex: 0xA1A1AA),
                placeholder: Tokens.Color(hex: 0x71717A),
                disabled: Tokens.Color(hex: 0x52525B),
                accent: Tokens.Color(hex: 0xFFD8B0)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x257EA7, alpha: 0.2), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x257EA7, alpha: 0.2), border: Tokens.Color(hex: 0x257EA7)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xF38484), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1411764706), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFFD8B0), background: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1098039216), border: Tokens.Color(hex: 0x257EA7)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF9933), background: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078), border: Tokens.Color(hex: 0xFF9933)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1411764706), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xC7E9F1), background: Tokens.Color(hex: 0x257EA7, alpha: 0.2), border: Tokens.Color(hex: 0x7EC8DE)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x52525B), background: Tokens.Color(hex: 0x18181B), border: Tokens.Color(hex: 0x27272A)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x52525B), background: Tokens.Color(hex: 0x18181B), border: Tokens.Color(hex: 0x27272A)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x71717A), background: Tokens.Color(hex: 0x18181B), border: Tokens.Color(hex: 0x27272A))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x18181B),
                trackBorder: Tokens.Color(hex: 0x27272A),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xFF9933, alpha: 0.2),
                thumbHoverBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.8)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.5019607843)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x257EA7, alpha: 0.2),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x257EA7, alpha: 0.2),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.2509803922),
            linkTextHover: Tokens.Color(hex: 0xFFD8B0),
            players: [
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2509803922), background: Tokens.Color(hex: 0x13263D)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFF9933, alpha: 0.2509803922), background: Tokens.Color(hex: 0x3A2413)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2509803922), background: Tokens.Color(hex: 0x351616)),
                Player(cursor: Tokens.Color(hex: 0xA78BFA), selection: Tokens.Color(hex: 0xA78BFA, alpha: 0.2509803922), background: Tokens.Color(hex: 0x221B3E)),
            ],
            accents: [
                Tokens.Color(hex: 0xFF9933),
                Tokens.Color(hex: 0xFFD8B0),
                Tokens.Color(hex: 0x7EC8DE),
                Tokens.Color(hex: 0x298BB8),
                Tokens.Color(hex: 0xEF5A5A),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 600),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x9999A1), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 600),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 700),
                "embedded": SyntaxStyle(backgroundColor: Tokens.Color(hex: 0x1E3A5F, alpha: 0.5019607843)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 600),
                "hint": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933), fontWeight: 700),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0xA1A1AA)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0)),
                "punctuation.delimiter": SyntaxStyle(color: Tokens.Color(hex: 0x71717A)),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66)),
                "strong": SyntaxStyle(fontWeight: 700),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0xFFCC66), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 700),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xD3D8DE)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xA78BFA)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x09090B, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x18181B),
                border: Tokens.Color(hex: 0x27272A),
                focusedBorder: Tokens.Color(hex: 0xFF9933)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Command Light — transcribed from zed-trek.json.
    public static let commandLight = Theme(
        name: "Command Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xF9FAFB),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFFFFFF),
                foreground: Tokens.Color(hex: 0x4A5766),
                gutterBackground: Tokens.Color(hex: 0xF9FAFB),
                activeLineBackground: Tokens.Color(hex: 0xE6F5F7, alpha: 0.5019607843),
                highlightedLineBackground: Tokens.Color(hex: 0xEFF2F5),
                activeLineNumber: Tokens.Color(hex: 0x1C5F7D),
                lineNumber: Tokens.Color(hex: 0x55555E),
                invisible: Tokens.Color(hex: 0xD3D8DE),
                indentGuide: Tokens.Color(hex: 0xD3D8DE),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0xE4E4E7),
                activeWrapGuide: Tokens.Color(hex: 0x7EC8DE),
                subheaderBackground: Tokens.Color(hex: 0xEFF2F5),
                documentHighlightRead: Tokens.Color(hex: 0xC7E9F1, alpha: 0.4),
                documentHighlightWrite: Tokens.Color(hex: 0xFFD8B0, alpha: 0.4),
                documentHighlightBracket: Tokens.Color(hex: 0xFFD8B0, alpha: 0.5019607843)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xE6F5F7),
                titleBarInactiveBackground: Tokens.Color(hex: 0xEFF2F5),
                tabBarBackground: Tokens.Color(hex: 0xF9FAFB),
                tabActiveBackground: Tokens.Color(hex: 0xFFFFFF),
                tabInactiveBackground: Tokens.Color(hex: 0xEFF2F5),
                statusBarBackground: Tokens.Color(hex: 0xEFF2F5),
                toolbarBackground: Tokens.Color(hex: 0xF9FAFB),
                surfaceBackground: Tokens.Color(hex: 0xEAEEF2),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFFFF),
                panelBackground: Tokens.Color(hex: 0xDFE4EA),
                panelFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuide: Tokens.Color(hex: 0xD3D8DE),
                panelIndentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuideHover: Tokens.Color(hex: 0x257EA7),
                paneFocusedBorder: Tokens.Color(hex: 0x257EA7),
                paneGroupBorder: Tokens.Color(hex: 0xC7E9F1)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xEFF2F5), hover: Tokens.Color(hex: 0xE6F5F7), active: Tokens.Color(hex: 0xC7E9F1), selected: Tokens.Color(hex: 0xC7E9F1), disabled: Tokens.Color(hex: 0xF3F4F6)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x000000, alpha: 0.0), hover: Tokens.Color(hex: 0xE6F5F7, alpha: 0.5019607843), active: Tokens.Color(hex: 0xC7E9F1, alpha: 0.5019607843), selected: Tokens.Color(hex: 0xFFD8B0, alpha: 0.4), disabled: Tokens.Color(hex: 0x000000, alpha: 0.0))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0xC7E9F1),
                disabled: Tokens.Color(hex: 0xE4E4E7),
                focused: Tokens.Color(hex: 0x257EA7),
                selected: Tokens.Color(hex: 0xD66B00),
                transparent: Tokens.Color(hex: 0x000000, alpha: 0.0),
                variant: Tokens.Color(hex: 0xD3D8DE)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x465260),
                muted: Tokens.Color(hex: 0x505057),
                placeholder: Tokens.Color(hex: 0x505058),
                disabled: Tokens.Color(hex: 0xA1A1AA),
                accent: Tokens.Color(hex: 0x195772)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x4A5766),
                muted: Tokens.Color(hex: 0x71717A),
                placeholder: Tokens.Color(hex: 0xA1A1AA),
                disabled: Tokens.Color(hex: 0xD3D8DE),
                accent: Tokens.Color(hex: 0x257EA7)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x195772), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x0A5C44), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x803F00), background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.3019607843), border: Tokens.Color(hex: 0xFF9933)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0x9B2121), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1019607843), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xB45309), background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.3019607843), border: Tokens.Color(hex: 0xFF9933))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x0F8B67), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x803F00), background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.3019607843), border: Tokens.Color(hex: 0xFF9933)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1019607843), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x1E3A5F), background: Tokens.Color(hex: 0xC7E9F1, alpha: 0.5019607843), border: Tokens.Color(hex: 0x257EA7)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0xA1A1AA), background: Tokens.Color(hex: 0xEFF2F5), border: Tokens.Color(hex: 0xE4E4E7)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0xA1A1AA), background: Tokens.Color(hex: 0xEFF2F5), border: Tokens.Color(hex: 0xD3D8DE)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0xA1A1AA), background: Tokens.Color(hex: 0xEFF2F5), border: Tokens.Color(hex: 0xD3D8DE))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xEFF2F5),
                trackBorder: Tokens.Color(hex: 0xD3D8DE),
                thumbBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0xFF9933, alpha: 0.2),
                thumbHoverBackground: Tokens.Color(hex: 0xFF9933, alpha: 0.8)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFFD8B0, alpha: 0.8)),
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
            dropTarget: Tokens.Color(hex: 0xFF9933, alpha: 0.1490196078),
            linkTextHover: Tokens.Color(hex: 0x1E3A5F),
            players: [
                Player(cursor: Tokens.Color(hex: 0x257EA7), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.4), background: Tokens.Color(hex: 0xE6F5F7)),
                Player(cursor: Tokens.Color(hex: 0xFF9933), selection: Tokens.Color(hex: 0xFFD8B0, alpha: 0.5019607843), background: Tokens.Color(hex: 0xFFF1DF)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2), background: Tokens.Color(hex: 0xFDECEC)),
                Player(cursor: Tokens.Color(hex: 0x7C5CFF), selection: Tokens.Color(hex: 0x7C5CFF, alpha: 0.2), background: Tokens.Color(hex: 0xF1E8FF)),
            ],
            accents: [
                Tokens.Color(hex: 0x22759A),
                Tokens.Color(hex: 0x25778F),
                Tokens.Color(hex: 0xAB5700),
                Tokens.Color(hex: 0xAD5700),
                Tokens.Color(hex: 0xD81515),
            ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x1C5F7D)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0xB65B00), fontWeight: 600),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x585860), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x8B4500), fontWeight: 600),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "embedded": SyntaxStyle(backgroundColor: Tokens.Color(hex: 0xE6F5F7, alpha: 0.4)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "hint": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x1C5F7D), fontWeight: 700),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFF9933)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x8B4500)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x4A5766), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x1C5F7D)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x585860)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "punctuation.delimiter": SyntaxStyle(color: Tokens.Color(hex: 0xA1A1AA)),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x0C607A)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xB65B00)),
                "strong": SyntaxStyle(fontWeight: 700),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x0F7B9D)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 700),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x4A5766)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xB65B00), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x7C5CFF)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFFFFFF, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xEFF2F5),
                border: Tokens.Color(hex: 0xC7E9F1),
                focusedBorder: Tokens.Color(hex: 0x257EA7)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
