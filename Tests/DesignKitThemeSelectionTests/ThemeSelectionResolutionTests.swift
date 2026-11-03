import DesignKitThemes
import XCTest
@testable import DesignKitThemeSelection

final class ThemeSelectionResolutionTests: XCTestCase {
    func test_resolutionTable() {
        let cases: [(ThemeAppearancePreference, Theme.Appearance, Theme.Appearance)] = [
            (.system, .light, .light),
            (.system, .dark, .dark),
            (.light, .light, .light),
            (.light, .dark, .light),
            (.dark, .light, .dark),
            (.dark, .dark, .dark),
        ]
        for (preference, system, expected) in cases {
            let selection = ThemeSelection(appearance: preference)
            XCTAssertEqual(selection.resolvedAppearance(system: system), expected,
                           "\(preference.rawValue) under system \(system)")
        }
    }

    func test_resolvedThemeFollowsPreference() {
        XCTAssertEqual(ThemeSelection(appearance: .dark).resolvedTheme(system: .light), Theme.dark)
        XCTAssertEqual(ThemeSelection(appearance: .light).resolvedTheme(system: .dark), Theme.light)
        XCTAssertEqual(ThemeSelection(appearance: .system).resolvedTheme(system: .light), Theme.light)
        XCTAssertEqual(ThemeSelection(appearance: .system).resolvedTheme(system: .dark), Theme.dark)
    }

    func test_preferenceRawValuesArePinned() {
        XCTAssertEqual(ThemeAppearancePreference.system.rawValue, "system")
        XCTAssertEqual(ThemeAppearancePreference.light.rawValue, "light")
        XCTAssertEqual(ThemeAppearancePreference.dark.rawValue, "dark")
        XCTAssertEqual(ThemeAppearancePreference.allCases, [.system, .light, .dark])
    }
}
