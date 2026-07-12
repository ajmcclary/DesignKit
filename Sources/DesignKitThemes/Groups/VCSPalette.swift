import DesignKitTokens
import Foundation

/// VCS-state palette covering seven kinds (created/modified/deleted/renamed/
/// ignored/hidden/unreachable), each with `base`, `background`, and `border`
/// keys in Zed JSON. Maps closely to git diff state.
public struct VCSPalette: Hashable, Sendable {
    /// One VCS entry — base color plus background/border tints.
    public struct VCS: Hashable, Sendable {
        /// Foreground / accent color for the VCS state.
        public let base: Tokens.Color
        /// Background fill for VCS-state regions.
        public let background: Tokens.Color
        /// Border for VCS-state regions.
        public let border: Tokens.Color

        /// Memberwise builder.
        public init(base: Tokens.Color, background: Tokens.Color, border: Tokens.Color) {
            self.base = base
            self.background = background
            self.border = border
        }
    }

    /// New file or addition.
    public let created: VCS
    /// Modified content.
    public let modified: VCS
    /// Deleted content.
    public let deleted: VCS
    /// Renamed file.
    public let renamed: VCS
    /// Ignored by VCS.
    public let ignored: VCS
    /// Hidden in tree.
    public let hidden: VCS
    /// Unreachable / unborn.
    public let unreachable: VCS

    /// Memberwise builder.
    public init(
        created: VCS,
        modified: VCS,
        deleted: VCS,
        renamed: VCS,
        ignored: VCS,
        hidden: VCS,
        unreachable: VCS
    ) {
        self.created = created
        self.modified = modified
        self.deleted = deleted
        self.renamed = renamed
        self.ignored = ignored
        self.hidden = hidden
        self.unreachable = unreachable
    }

}
