// Transcribed from CodeEditorPlugin zed-trek.json (schema v0.2.0) by
// Scripts/bootstrap-themes on 2026-07-12. Swift is now the source of
// truth: edit these values directly.
import DesignKitTokens

extension Theme {
    /// Sick Bay Dark — transcribed from zed-trek.json.
    public static let sickBayDark = Theme(
        name: "Sick Bay Dark",
        appearance: .dark,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0x071116),
            editor: EditorColors(
                background: Tokens.Color(hex: 0x050B0F),
                foreground: Tokens.Color(hex: 0xD9F2F6),
                gutterBackground: Tokens.Color(hex: 0x08141B),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0700),
                highlightedLineBackground: Tokens.Color(hex: 0x3CCF91, alpha: 0.1250),
                activeLineNumber: Tokens.Color(hex: 0x3CCF91),
                lineNumber: Tokens.Color(hex: 0x8CA3AB),
                invisible: Tokens.Color(hex: 0x16313D),
                indentGuide: Tokens.Color(hex: 0x16313D),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0x16313D),
                activeWrapGuide: Tokens.Color(hex: 0x3CCF91),
                subheaderBackground: Tokens.Color(hex: 0x08141B),
                documentHighlightRead: Tokens.Color(hex: 0xC7E9F1, alpha: 0.1411764706),
                documentHighlightWrite: Tokens.Color(hex: 0x3CCF91, alpha: 0.1490196078),
                documentHighlightBracket: Tokens.Color(hex: 0x3CCF91, alpha: 0.2)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0x0F2C38),
                titleBarInactiveBackground: Tokens.Color(hex: 0x0B1820),
                tabBarBackground: Tokens.Color(hex: 0x071116),
                tabActiveBackground: Tokens.Color(hex: 0x142833),
                tabInactiveBackground: Tokens.Color(hex: 0x08141B),
                statusBarBackground: Tokens.Color(hex: 0x0F2C38),
                toolbarBackground: Tokens.Color(hex: 0x0B1820),
                surfaceBackground: Tokens.Color(hex: 0x132731),
                elevatedSurfaceBackground: Tokens.Color(hex: 0x19323F),
                panelBackground: Tokens.Color(hex: 0x0B1820),
                panelFocusedBorder: Tokens.Color(hex: 0x3CCF91),
                panelIndentGuide: Tokens.Color(hex: 0x16313D),
                panelIndentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuideHover: Tokens.Color(hex: 0x3CCF91),
                paneFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                paneGroupBorder: Tokens.Color(hex: 0x16313D)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0x142833), hover: Tokens.Color(hex: 0x193542), active: Tokens.Color(hex: 0x1F4352), selected: Tokens.Color(hex: 0x164B35), disabled: Tokens.Color(hex: 0x0B1820)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0x071116, alpha: 0.0), hover: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0940), active: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1680), selected: Tokens.Color(hex: 0x3CCF91, alpha: 0.2000), disabled: Tokens.Color(hex: 0x0B1820, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x1B3D4A),
                disabled: Tokens.Color(hex: 0x132832),
                focused: Tokens.Color(hex: 0x7EC8DE),
                selected: Tokens.Color(hex: 0x3CCF91),
                transparent: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0),
                variant: Tokens.Color(hex: 0x16313D)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0xD9F2F6),
                muted: Tokens.Color(hex: 0x8FB4BF),
                placeholder: Tokens.Color(hex: 0x92A8B1),
                disabled: Tokens.Color(hex: 0x516974),
                accent: Tokens.Color(hex: 0xC7E9F1)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0xB8DCE4),
                muted: Tokens.Color(hex: 0x799CA7),
                placeholder: Tokens.Color(hex: 0x5D7781),
                disabled: Tokens.Color(hex: 0x344B55),
                accent: Tokens.Color(hex: 0x7EC8DE)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x3CCF91), background: Tokens.Color(hex: 0x0D2A20), border: Tokens.Color(hex: 0x2F9F68)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0xFFD8B0), background: Tokens.Color(hex: 0x332516), border: Tokens.Color(hex: 0xB87952)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xFF7D7D), background: Tokens.Color(hex: 0x331719), border: Tokens.Color(hex: 0xEF5A5A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xFFD8B0), background: Tokens.Color(hex: 0x332516), border: Tokens.Color(hex: 0xB87952))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x3CCF91), background: Tokens.Color(hex: 0x0D2A20), border: Tokens.Color(hex: 0x2F9F68)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x7EC8DE), background: Tokens.Color(hex: 0x102838), border: Tokens.Color(hex: 0x257EA7)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xFF7373), background: Tokens.Color(hex: 0x331719), border: Tokens.Color(hex: 0xEF5A5A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0xB5B9FF), background: Tokens.Color(hex: 0x202544), border: Tokens.Color(hex: 0x777EE0)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x6E8B96), background: Tokens.Color(hex: 0x08141B), border: Tokens.Color(hex: 0x16313D)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x516974), background: Tokens.Color(hex: 0x0B1820), border: Tokens.Color(hex: 0x132832)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x617079), background: Tokens.Color(hex: 0x142833), border: Tokens.Color(hex: 0x1B3D4A))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0x0B1820),
                trackBorder: Tokens.Color(hex: 0x16313D),
                thumbBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0x3CCF91),
                thumbHoverBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFFD8B0, alpha: 0.5000)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x8FB4BF),
                background: Tokens.Color(hex: 0x3CCF91, alpha: 0.1215686275),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x7EC8DE),
                background: Tokens.Color(hex: 0x102838),
                border: Tokens.Color(hex: 0x257EA7)
            ),
            dropTarget: Tokens.Color(hex: 0x3CCF91, alpha: 0.1882352941),
            linkTextHover: Tokens.Color(hex: 0xC7E9F1),
            players: [
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x3CCF91), selection: Tokens.Color(hex: 0x3CCF91, alpha: 0.1490196078), background: Tokens.Color(hex: 0x3CCF91, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFFD8B0), selection: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFF7373), selection: Tokens.Color(hex: 0xFF7373, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFF7373, alpha: 0.2)),
            ],
            accents: [
                    Tokens.Color(hex: 0x7EC8DE),
                    Tokens.Color(hex: 0xC7E9F1),
                    Tokens.Color(hex: 0x3CCF91),
                    Tokens.Color(hex: 0xFFD8B0),
                    Tokens.Color(hex: 0xFF7373),
                ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x3CCF91)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x3CCF91), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x869EA7), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x3CCF91)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0xD9F2F6)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0xFFD8B0)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x8FB4BF), backgroundColor: Tokens.Color(hex: 0x3CCF91, alpha: 0.0941176471)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0xB8DCE4)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x8FB4BF)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x3CCF91)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0xD9F2F6)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0xC7E9F1), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x7EC8DE), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0xD9F2F6)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xFF7373), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0xB5B9FF)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0x050B0F, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.3), blur: 36.0, xOffset: 0.0, yOffset: 10.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0x142833),
                border: Tokens.Color(hex: 0x1B3D4A),
                focusedBorder: Tokens.Color(hex: 0x7EC8DE)
            ),
            onAccent: Tokens.Color(hex: 0x05060A),
            onDanger: Tokens.Color(hex: 0x05060A)
        )
    )

    /// Sick Bay Light — transcribed from zed-trek.json.
    public static let sickBayLight = Theme(
        name: "Sick Bay Light",
        appearance: .light,
        style: ThemeStyle(
            background: Tokens.Color(hex: 0xF6FBFC),
            editor: EditorColors(
                background: Tokens.Color(hex: 0xFBFEFF),
                foreground: Tokens.Color(hex: 0x263943),
                gutterBackground: Tokens.Color(hex: 0xE8F3F6),
                activeLineBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0710),
                highlightedLineBackground: Tokens.Color(hex: 0x3CCF91, alpha: 0.1410),
                activeLineNumber: Tokens.Color(hex: 0x1E3A5F),
                lineNumber: Tokens.Color(hex: 0x425359),
                invisible: Tokens.Color(hex: 0xBEDDE5),
                indentGuide: Tokens.Color(hex: 0xBEDDE5),
                indentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                wrapGuide: Tokens.Color(hex: 0xBEDDE5),
                activeWrapGuide: Tokens.Color(hex: 0x3CCF91),
                subheaderBackground: Tokens.Color(hex: 0xEFF9FB),
                documentHighlightRead: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078),
                documentHighlightWrite: Tokens.Color(hex: 0x3CCF91, alpha: 0.1882352941),
                documentHighlightBracket: Tokens.Color(hex: 0x3CCF91, alpha: 0.2666666667)
            ),
            chrome: ChromeColors(
                titleBarBackground: Tokens.Color(hex: 0xD7EEF4),
                titleBarInactiveBackground: Tokens.Color(hex: 0xEDF7F9),
                tabBarBackground: Tokens.Color(hex: 0xD7EEF4),
                tabActiveBackground: Tokens.Color(hex: 0xFBFEFF),
                tabInactiveBackground: Tokens.Color(hex: 0xC7E9F1),
                statusBarBackground: Tokens.Color(hex: 0xD7EEF4),
                toolbarBackground: Tokens.Color(hex: 0xE8F3F6),
                surfaceBackground: Tokens.Color(hex: 0xE3F2F6),
                elevatedSurfaceBackground: Tokens.Color(hex: 0xFFFFFF),
                panelBackground: Tokens.Color(hex: 0xD8EBF0),
                panelFocusedBorder: Tokens.Color(hex: 0x3CCF91),
                panelIndentGuide: Tokens.Color(hex: 0xBEDDE5),
                panelIndentGuideActive: Tokens.Color(hex: 0x7EC8DE),
                panelIndentGuideHover: Tokens.Color(hex: 0x3CCF91),
                paneFocusedBorder: Tokens.Color(hex: 0x7EC8DE),
                paneGroupBorder: Tokens.Color(hex: 0xBEDDE5)
            ),
            elements: ElementStates(
                element: ElementStates.States(background: Tokens.Color(hex: 0xE1F2F6), hover: Tokens.Color(hex: 0xD7EEF4), active: Tokens.Color(hex: 0xC7E9F1), selected: Tokens.Color(hex: 0xBDF3DC), disabled: Tokens.Color(hex: 0xF0F6F8)),
                ghostElement: ElementStates.States(background: Tokens.Color(hex: 0xF6FBFC, alpha: 0.0), hover: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0940), active: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1570), selected: Tokens.Color(hex: 0x3CCF91, alpha: 0.2270), disabled: Tokens.Color(hex: 0xF0F6F8, alpha: 0.5333333333))
            ),
            borders: BorderColors(
                base: Tokens.Color(hex: 0x9FCBD6),
                disabled: Tokens.Color(hex: 0xD3E6EA),
                focused: Tokens.Color(hex: 0x2F98B8),
                selected: Tokens.Color(hex: 0x28A16E),
                transparent: Tokens.Color(hex: 0x7EC8DE, alpha: 0.0),
                variant: Tokens.Color(hex: 0xBEDDE5)
            ),
            text: TextLevels(
                base: Tokens.Color(hex: 0x263943),
                muted: Tokens.Color(hex: 0x44565D),
                placeholder: Tokens.Color(hex: 0x44565C),
                disabled: Tokens.Color(hex: 0x9AAEB5),
                accent: Tokens.Color(hex: 0x1E3A5F)
            ),
            icon: IconLevels(
                base: Tokens.Color(hex: 0x4A5766),
                muted: Tokens.Color(hex: 0x6C8189),
                placeholder: Tokens.Color(hex: 0x8DA3AB),
                disabled: Tokens.Color(hex: 0xB4C6CC),
                accent: Tokens.Color(hex: 0x2F98B8)
            ),
            status: StatusPalette(
                info: StatusPalette.Status(base: Tokens.Color(hex: 0x1A5875), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                success: StatusPalette.Status(base: Tokens.Color(hex: 0x1C5E3D), background: Tokens.Color(hex: 0xE6F9F0), border: Tokens.Color(hex: 0x3CCF91)),
                warning: StatusPalette.Status(base: Tokens.Color(hex: 0x814300), background: Tokens.Color(hex: 0xFFF2D8), border: Tokens.Color(hex: 0xFFD8B0)),
                error: StatusPalette.Status(base: Tokens.Color(hex: 0xA71010), background: Tokens.Color(hex: 0xFFE5E5), border: Tokens.Color(hex: 0xD94A4A)),
                conflict: StatusPalette.Status(base: Tokens.Color(hex: 0xB45D00), background: Tokens.Color(hex: 0xFFF2D8), border: Tokens.Color(hex: 0xFFD8B0))
            ),
            vcs: VCSPalette(
                created: VCSPalette.VCS(base: Tokens.Color(hex: 0x2F9F68), background: Tokens.Color(hex: 0xE6F9F0), border: Tokens.Color(hex: 0x3CCF91)),
                modified: VCSPalette.VCS(base: Tokens.Color(hex: 0x1A5875), background: Tokens.Color(hex: 0xE6F5F7), border: Tokens.Color(hex: 0x7EC8DE)),
                deleted: VCSPalette.VCS(base: Tokens.Color(hex: 0xEF5A5A), background: Tokens.Color(hex: 0xFFE5E5), border: Tokens.Color(hex: 0xD94A4A)),
                renamed: VCSPalette.VCS(base: Tokens.Color(hex: 0x6B72C9), background: Tokens.Color(hex: 0xEEF0FF), border: Tokens.Color(hex: 0xA9AEF0)),
                ignored: VCSPalette.VCS(base: Tokens.Color(hex: 0x7F98A0), background: Tokens.Color(hex: 0xEFF9FB), border: Tokens.Color(hex: 0xBEDDE5)),
                hidden: VCSPalette.VCS(base: Tokens.Color(hex: 0x9AAEB5), background: Tokens.Color(hex: 0xF0F6F8), border: Tokens.Color(hex: 0xD3E6EA)),
                unreachable: VCSPalette.VCS(base: Tokens.Color(hex: 0x7D8C91), background: Tokens.Color(hex: 0xEDF3F4), border: Tokens.Color(hex: 0x9FCBD6))
            ),
            scrollbar: ScrollbarColors(
                trackBackground: Tokens.Color(hex: 0xE8F3F6),
                trackBorder: Tokens.Color(hex: 0xBEDDE5),
                thumbBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.6),
                thumbBorder: Tokens.Color(hex: 0x1E3A5F),
                thumbHoverBackground: Tokens.Color(hex: 0x7EC8DE, alpha: 0.6666666667)
            ),
            search: SearchColors(matchBackground: Tokens.Color(hex: 0xFFD8B0, alpha: 0.4710)),
            predictive: PredictiveColors(
                base: Tokens.Color(hex: 0x5C747D),
                background: Tokens.Color(hex: 0x3CCF91, alpha: 0.2),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            hint: HintColors(
                base: Tokens.Color(hex: 0x257EA7),
                background: Tokens.Color(hex: 0xE6F5F7),
                border: Tokens.Color(hex: 0x7EC8DE)
            ),
            dropTarget: Tokens.Color(hex: 0x3CCF91, alpha: 0.2274509804),
            linkTextHover: Tokens.Color(hex: 0x7EC8DE),
            players: [
                Player(cursor: Tokens.Color(hex: 0x7EC8DE), selection: Tokens.Color(hex: 0x7EC8DE, alpha: 0.1490196078), background: Tokens.Color(hex: 0x7EC8DE, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0x3CCF91), selection: Tokens.Color(hex: 0x3CCF91, alpha: 0.1490196078), background: Tokens.Color(hex: 0x3CCF91, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xFFD8B0), selection: Tokens.Color(hex: 0xFFD8B0, alpha: 0.1490196078), background: Tokens.Color(hex: 0xFFD8B0, alpha: 0.2)),
                Player(cursor: Tokens.Color(hex: 0xEF5A5A), selection: Tokens.Color(hex: 0xEF5A5A, alpha: 0.1490196078), background: Tokens.Color(hex: 0xEF5A5A, alpha: 0.2)),
            ],
            accents: [
                    Tokens.Color(hex: 0x25778F),
                    Tokens.Color(hex: 0x23789F),
                    Tokens.Color(hex: 0x1F7C55),
                    Tokens.Color(hex: 0xB05900),
                    Tokens.Color(hex: 0xDD1515),
                ],
            syntax: [
                "attribute": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B)),
                "boolean": SyntaxStyle(color: Tokens.Color(hex: 0x2F9F68), fontWeight: 700),
                "comment": SyntaxStyle(color: Tokens.Color(hex: 0x475A60), fontStyle: .italic),
                "constant": SyntaxStyle(color: Tokens.Color(hex: 0x434BB6)),
                "constructor": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 600),
                "embedded": SyntaxStyle(color: Tokens.Color(hex: 0x263943)),
                "emphasis": SyntaxStyle(fontStyle: .italic),
                "function": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 700),
                "function.method": SyntaxStyle(color: Tokens.Color(hex: 0x1F8EA5), fontWeight: 600),
                "keyword": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "label": SyntaxStyle(color: Tokens.Color(hex: 0xB45D00)),
                "link_text": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7)),
                "link_uri": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontStyle: .italic),
                "number": SyntaxStyle(color: Tokens.Color(hex: 0x884600)),
                "operator": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 600),
                "predictive": SyntaxStyle(color: Tokens.Color(hex: 0x5C747D), backgroundColor: Tokens.Color(hex: 0x3CCF91, alpha: 0.1333333333)),
                "property": SyntaxStyle(color: Tokens.Color(hex: 0x4A5766)),
                "punctuation": SyntaxStyle(color: Tokens.Color(hex: 0x475A61)),
                "punctuation.bracket": SyntaxStyle(color: Tokens.Color(hex: 0x257EA7), fontWeight: 700),
                "string": SyntaxStyle(color: Tokens.Color(hex: 0x1E6340)),
                "string.special": SyntaxStyle(color: Tokens.Color(hex: 0x1F8EA5)),
                "tag": SyntaxStyle(color: Tokens.Color(hex: 0x1B5D7B), fontWeight: 700),
                "text.literal": SyntaxStyle(color: Tokens.Color(hex: 0x263943)),
                "title": SyntaxStyle(color: Tokens.Color(hex: 0x1E3A5F), fontWeight: 800),
                "type": SyntaxStyle(color: Tokens.Color(hex: 0x156070), fontWeight: 600),
                "variable": SyntaxStyle(color: Tokens.Color(hex: 0x263943)),
                "variable.special": SyntaxStyle(color: Tokens.Color(hex: 0xEF5A5A), fontWeight: 600),
                "variant": SyntaxStyle(color: Tokens.Color(hex: 0x6B72C9)),
            ],
            terminal: nil
        ),
        glass: GlassStyle(
            glass: GlassStyle.Glass(tint: Tokens.Color(hex: 0xFBFEFF, alpha: 0.12), opacity: 0.12),
            shadows: GlassStyle.Shadows(popover: GlassStyle.Shadow(color: Tokens.Color(hex: 0x000000, alpha: 0.12), blur: 32.0, xOffset: 0.0, yOffset: 12.0)),
            field: GlassStyle.Field(
                fill: Tokens.Color(hex: 0xE1F2F6),
                border: Tokens.Color(hex: 0x9FCBD6),
                focusedBorder: Tokens.Color(hex: 0x2F98B8)
            ),
            onAccent: Tokens.Color(hex: 0xFFFFFF),
            onDanger: Tokens.Color(hex: 0xFFFFFF)
        )
    )
}
