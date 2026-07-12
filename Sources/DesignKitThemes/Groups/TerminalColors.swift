import DesignKitTokens
import Foundation

/// Reserved for future terminal pane support. Every field optional; absent
/// from most Zed JSONs in the wild. Sub-project 2 only models the shape so
/// roundtrip preserves any values that are present.
public struct TerminalColors: Hashable, Sendable {
    /// Sixteen ANSI terminal colors (8 base + 8 bright). All optional.
    public struct ANSI: Hashable, Sendable {
        /// Black (ANSI 0).
        public let black: Tokens.Color?
        /// Red (ANSI 1).
        public let red: Tokens.Color?
        /// Green (ANSI 2).
        public let green: Tokens.Color?
        /// Yellow (ANSI 3).
        public let yellow: Tokens.Color?
        /// Blue (ANSI 4).
        public let blue: Tokens.Color?
        /// Magenta (ANSI 5).
        public let magenta: Tokens.Color?
        /// Cyan (ANSI 6).
        public let cyan: Tokens.Color?
        /// White (ANSI 7).
        public let white: Tokens.Color?
        /// Bright black (ANSI 8).
        public let brightBlack: Tokens.Color?
        /// Bright red (ANSI 9).
        public let brightRed: Tokens.Color?
        /// Bright green (ANSI 10).
        public let brightGreen: Tokens.Color?
        /// Bright yellow (ANSI 11).
        public let brightYellow: Tokens.Color?
        /// Bright blue (ANSI 12).
        public let brightBlue: Tokens.Color?
        /// Bright magenta (ANSI 13).
        public let brightMagenta: Tokens.Color?
        /// Bright cyan (ANSI 14).
        public let brightCyan: Tokens.Color?
        /// Bright white (ANSI 15).
        public let brightWhite: Tokens.Color?

        /// Memberwise builder; every parameter defaults to nil.
        public init(
            black: Tokens.Color? = nil,
            red: Tokens.Color? = nil,
            green: Tokens.Color? = nil,
            yellow: Tokens.Color? = nil,
            blue: Tokens.Color? = nil,
            magenta: Tokens.Color? = nil,
            cyan: Tokens.Color? = nil,
            white: Tokens.Color? = nil,
            brightBlack: Tokens.Color? = nil,
            brightRed: Tokens.Color? = nil,
            brightGreen: Tokens.Color? = nil,
            brightYellow: Tokens.Color? = nil,
            brightBlue: Tokens.Color? = nil,
            brightMagenta: Tokens.Color? = nil,
            brightCyan: Tokens.Color? = nil,
            brightWhite: Tokens.Color? = nil
        ) {
            self.black = black; self.red = red; self.green = green; self.yellow = yellow
            self.blue = blue; self.magenta = magenta; self.cyan = cyan; self.white = white
            self.brightBlack = brightBlack; self.brightRed = brightRed
            self.brightGreen = brightGreen; self.brightYellow = brightYellow
            self.brightBlue = brightBlue; self.brightMagenta = brightMagenta
            self.brightCyan = brightCyan; self.brightWhite = brightWhite
        }

    }

    /// Terminal foreground color (ANSI default text).
    public let foreground: Tokens.Color?
    /// Terminal background color (ANSI default fill).
    public let background: Tokens.Color?
    /// Sixteen ANSI palette colors.
    public let ansi: ANSI?

    /// Memberwise builder; every parameter defaults to nil.
    public init(
        foreground: Tokens.Color? = nil,
        background: Tokens.Color? = nil,
        ansi: ANSI? = nil
    ) {
        self.foreground = foreground
        self.background = background
        self.ansi = ansi
    }

}
