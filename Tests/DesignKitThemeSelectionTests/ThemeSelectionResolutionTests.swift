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
            let selection = ThemeSelection(family: .lcars, appearance: preference)
            XCTAssertEqual(selection.resolvedAppearance(system: system), expected,
                           "\(preference.rawValue) under system \(system)")
        }
    }

    func test_everyFamilyResolvesBothAppearances() {
        for family in Theme.Family.allCases {
            let selection = ThemeSelection(family: family, appearance: .system)
            XCTAssertEqual(selection.resolvedTheme(system: .light).id, family.theme(for: .light).id)
            XCTAssertEqual(selection.resolvedTheme(system: .dark).id, family.theme(for: .dark).id)
        }
    }

    func test_preferenceRawValuesArePinned() {
        XCTAssertEqual(ThemeAppearancePreference.system.rawValue, "system")
        XCTAssertEqual(ThemeAppearancePreference.light.rawValue, "light")
        XCTAssertEqual(ThemeAppearancePreference.dark.rawValue, "dark")
        XCTAssertEqual(ThemeAppearancePreference.allCases, [.system, .light, .dark])
    }
}
