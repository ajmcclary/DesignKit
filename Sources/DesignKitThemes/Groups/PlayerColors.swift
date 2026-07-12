import DesignKitTokens
import Foundation

/// One entry from the `players` array. `players[0]` is the user's local
/// caret/selection; subsequent entries are reserved for collaborative
/// editing and preserved on roundtrip even though the editor draws only [0].
public struct Player: Hashable, Sendable {
    /// Caret color.
    public let cursor: Tokens.Color
    /// Selection fill color.
    public let selection: Tokens.Color
    /// Optional player-row background tint.
    public let background: Tokens.Color?

    /// Memberwise builder.
    public init(cursor: Tokens.Color, selection: Tokens.Color, background: Tokens.Color? = nil) {
        self.cursor = cursor
        self.selection = selection
        self.background = background
    }

}
