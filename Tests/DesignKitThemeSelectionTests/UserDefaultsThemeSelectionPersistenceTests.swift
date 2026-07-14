import DesignKitThemes
import Foundation
import XCTest
@testable import DesignKitThemeSelection

@MainActor
final class UserDefaultsThemeSelectionPersistenceTests: XCTestCase {
    private var suiteName: String!
    private var defaults: UserDefaults!

    override func setUp() {
        super.setUp()
        suiteName = "test.themeSelection.\(UUID().uuidString)"
        defaults = UserDefaults(suiteName: suiteName)
    }

    override func tearDown() {
        defaults.removePersistentDomain(forName: suiteName)
        super.tearDown()
    }

    func test_nothingPersisted_loadsNil() {
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults)
        XCTAssertNil(persistence.loadSelection())
    }

    func test_roundTrip() {
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults)
        persistence.saveFamily(.borgCube)
        persistence.saveAppearance(.dark)
        XCTAssertEqual(persistence.loadSelection(),
                       ThemeSelection(family: .borgCube, appearance: .dark))
    }

    func test_unknownFamilyRawLoadsNil() {
        defaults.set("not-a-family", forKey: UserDefaultsThemeSelectionPersistence.defaultFamilyKey)
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults)
        XCTAssertNil(persistence.loadSelection())
    }

    func test_missingAppearanceDefaultsToSystem() {
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults)
        persistence.saveFamily(.lcars)
        XCTAssertEqual(persistence.loadSelection(),
                       ThemeSelection(family: .lcars, appearance: .system))
    }

    func test_configurableKeys() {
        let persistence = UserDefaultsThemeSelectionPersistence(
            defaults: defaults, familyKey: "legacy.family", appearanceKey: "legacy.appearance")
        persistence.saveFamily(.command)
        persistence.saveAppearance(.light)
        XCTAssertEqual(defaults.string(forKey: "legacy.family"), "command")
        XCTAssertEqual(defaults.string(forKey: "legacy.appearance"), "light")
    }
}
