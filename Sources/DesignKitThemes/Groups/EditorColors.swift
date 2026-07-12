import DesignKitTokens
import Foundation

/// Editor-surface colors mapped to Zed's `editor.*` keys.
/// Sixteen knobs covering background, gutter, line highlight, and
/// document-highlight regions.
public struct EditorColors: Hashable, Sendable {
    /// Editor canvas background.
    public let background: Tokens.Color
    /// Default text foreground.
    public let foreground: Tokens.Color
    /// Gutter background fill.
    public let gutterBackground: Tokens.Color
    /// Active-line highlight tint.
    public let activeLineBackground: Tokens.Color
    /// Highlighted-line tint (find-result, debugger stop, etc.).
    public let highlightedLineBackground: Tokens.Color
    /// Active line-number color.
    public let activeLineNumber: Tokens.Color
    /// Default line-number color.
    public let lineNumber: Tokens.Color
    /// Color used to render invisible glyphs.
    public let invisible: Tokens.Color
    /// Indent-guide vertical line color.
    public let indentGuide: Tokens.Color
    /// Indent-guide line color when on the active indentation level.
    public let indentGuideActive: Tokens.Color
    /// Wrap-guide line color.
    public let wrapGuide: Tokens.Color
    /// Wrap-guide line color when active.
    public let activeWrapGuide: Tokens.Color
    /// Sub-header band background (e.g., section divider).
    public let subheaderBackground: Tokens.Color
    /// Document-highlight read background.
    public let documentHighlightRead: Tokens.Color
    /// Document-highlight write background.
    public let documentHighlightWrite: Tokens.Color
    /// Document-highlight bracket-match background.
    public let documentHighlightBracket: Tokens.Color

    /// Memberwise builder.
    public init(
        background: Tokens.Color,
        foreground: Tokens.Color,
        gutterBackground: Tokens.Color,
        activeLineBackground: Tokens.Color,
        highlightedLineBackground: Tokens.Color,
        activeLineNumber: Tokens.Color,
        lineNumber: Tokens.Color,
        invisible: Tokens.Color,
        indentGuide: Tokens.Color,
        indentGuideActive: Tokens.Color,
        wrapGuide: Tokens.Color,
        activeWrapGuide: Tokens.Color,
        subheaderBackground: Tokens.Color,
        documentHighlightRead: Tokens.Color,
        documentHighlightWrite: Tokens.Color,
        documentHighlightBracket: Tokens.Color
    ) {
        self.background = background
        self.foreground = foreground
        self.gutterBackground = gutterBackground
        self.activeLineBackground = activeLineBackground
        self.highlightedLineBackground = highlightedLineBackground
        self.activeLineNumber = activeLineNumber
        self.lineNumber = lineNumber
        self.invisible = invisible
        self.indentGuide = indentGuide
        self.indentGuideActive = indentGuideActive
        self.wrapGuide = wrapGuide
        self.activeWrapGuide = activeWrapGuide
        self.subheaderBackground = subheaderBackground
        self.documentHighlightRead = documentHighlightRead
        self.documentHighlightWrite = documentHighlightWrite
        self.documentHighlightBracket = documentHighlightBracket
    }

}
