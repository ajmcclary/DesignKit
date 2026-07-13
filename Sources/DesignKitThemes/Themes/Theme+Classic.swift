import DesignKitTokens

extension Theme {
    /// Classic — Apple system colors, built via `Theme.derive` from
    /// `Tokens.Palette`. The neutral fallback family for hosts that don't
    /// want a Zed Trek identity.
    public static let classicDark = Theme.derive(
        name: "Classic Dark",
        appearance: .dark,
        background: Tokens.Palette.ANSI.black,
        foreground: Tokens.Color(hex: 0xFFFFFF),
        accent: Tokens.Palette.Accent.dark
    )

    /// Classic light variant — see `classicDark`.
    public static let classicLight = Theme.derive(
        name: "Classic Light",
        appearance: .light,
        background: Tokens.Color(hex: 0xFFFFFF),
        foreground: Tokens.Color(hex: 0x000000),
        accent: Tokens.Palette.Accent.light
    )
}
