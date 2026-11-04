import Foundation
import Testing
@testable import DesignKitTokens

/// The token-backed constants generated in 3.0.0 keep every pre-3.0.0 value
/// (Review Focus 1: a name dropped in the split, or a rounded value, fails here).
@Suite struct TokensGeneratedTests {
	@Test func everyPreviousConstantKeepsItsValue() {
		let spacing: [Double] = [Tokens.Spacing.xxxs, Tokens.Spacing.xxs, Tokens.Spacing.xs, Tokens.Spacing.sm, Tokens.Spacing.smMd,
			Tokens.Spacing.md, Tokens.Spacing.lg, Tokens.Spacing.xl, Tokens.Spacing.xxl, Tokens.Spacing.xxxl,
			Tokens.Spacing.cardPadding, Tokens.Spacing.section, Tokens.Spacing.content]
		#expect(spacing == [2, 4, 6, 8, 10, 12, 16, 20, 24, 32, 16, 20, 24])
		let shape: [Double] = [Tokens.Shape.radiusXS, Tokens.Shape.radiusSM, Tokens.Shape.radiusMD, Tokens.Shape.radiusLG,
			Tokens.Shape.radiusXL, Tokens.Shape.radiusXXL, Tokens.Shape.radiusChip, Tokens.Shape.radiusWindow, Tokens.Shape.radiusFull,
			Tokens.Shape.strokeHairline, Tokens.Shape.strokeThin, Tokens.Shape.strokeMedLight, Tokens.Shape.strokeMedium,
			Tokens.Shape.strokeThick, Tokens.Shape.strokeRing]
		#expect(shape == [4, 6, 10, 12, 16, 20, 8, 40, 9_999, 0.5, 1, 1.5, 2, 3, 8])
		typealias S = Tokens.Typography.Size
		let sizes: [Double] = [S.displayXL, S.displayLG, S.displayMD, S.displaySM, S.titleXL, S.titleLG, S.titleMD, S.titleSM,
			S.headingLG, S.headingMD, S.bodyLG, S.bodyMD, S.bodySM, S.captionLG, S.captionMD, S.overline]
		#expect(sizes == [80, 60, 48, 44, 34, 28, 22, 20, 17, 15, 17, 16, 13, 12, 11, 11])
		typealias Wt = Tokens.Typography.Weight
		let weights: [Int] = [Wt.regular, Wt.medium, Wt.semibold, Wt.bold]
		#expect(weights == [400, 500, 600, 700])
		typealias LH = Tokens.Typography.LineHeight
		let lineHeights: [Double] = [LH.tight, LH.normal, LH.relaxed]
		#expect(lineHeights == [1.0, 1.2, 1.5])
		#expect(Tokens.Typography.Tracking.caps == Double(0.5))
		#expect(Tokens.Typography.Tracking.tight == Double(-0.01), "hand-written: no token")
		typealias O = Tokens.Opacity
		let opacity: [Double] = [O.faint, O.dim, O.subtle, O.mist, O.soft, O.tint, O.glassFill, O.glassBorder, O.glassHighlight,
			O.light, O.disabled, O.medium, O.strong, O.heavy, O.near]
		#expect(opacity == [0.03, 0.04, 0.05, 0.06, 0.08, 0.10, 0.12, 0.14, 0.15, 0.20, 0.30, 0.50, 0.70, 0.80, 0.85])
	}

	@Test func generatedHeaderNamesTheVendoredCommit() throws {
		let root = URL(fileURLWithPath: #filePath).deletingLastPathComponent().deletingLastPathComponent().deletingLastPathComponent()
		let source = try String(contentsOf: root.appendingPathComponent("Scripts/token-sources/SOURCE.md"), encoding: .utf8)
		let commit = try #require(source.firstMatch(of: /Commit:\s*([0-9a-f]{8})/)?.1)
		let generated = try String(contentsOf: root.appendingPathComponent("Sources/DesignKitTokens/Tokens+Generated.swift"), encoding: .utf8)
		#expect(generated.hasPrefix("// GENERATED"))
		#expect(generated.contains(String(commit)))
	}
}
