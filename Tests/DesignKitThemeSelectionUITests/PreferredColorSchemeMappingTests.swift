import DesignKitThemeSelection
import SwiftUI
import XCTest
@testable import DesignKitThemeSelectionUI

@MainActor
final class PreferredColorSchemeMappingTests: XCTestCase {
    func test_preferredColorSchemeMapping() {
        XCTAssertNil(ThemeAppearancePreference.system.preferredColorScheme)
        XCTAssertEqual(ThemeAppearancePreference.light.preferredColorScheme, .light)
        XCTAssertEqual(ThemeAppearancePreference.dark.preferredColorScheme, .dark)
    }

    func test_modifierExistsAtWindowRootShape() {
        // Compile-shape check: the installation modifier accepts a selection.
        let selection = ThemeSelection(family: .lcars, appearance: .system)
        _ = EmptyView().designKitThemeSelection(selection)
    }
}
