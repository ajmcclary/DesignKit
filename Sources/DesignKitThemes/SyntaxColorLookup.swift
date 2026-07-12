import DesignKitTokens
import Foundation

extension Theme {
    /// Hierarchical syntax-color lookup. Strips trailing dotted segments on
    /// miss: `function.method.builtin` → `function.method` → `function` →
    /// `editor.foreground`. Pure; no global state.
    public func resolveSyntaxColor(for key: String) -> Tokens.Color {
        resolveSyntaxStyle(for: key)?.color ?? style.editor.foreground
    }

    /// Hierarchical syntax-style lookup (same segment-dropping walk as
    /// `resolveSyntaxColor(for:)`), returning the full style so callers can
    /// read weight/italic. Returns nil when no ancestor key matches.
    public func resolveSyntaxStyle(for key: String) -> SyntaxStyle? {
        var probe = key
        while !probe.isEmpty {
            if let entry = style.syntax[probe], entry.color != nil {
                return entry
            }
            guard let dot = probe.lastIndex(of: ".") else { break }
            probe = String(probe[..<dot])
        }
        return nil
    }
}
