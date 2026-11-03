import DesignKitThemes
import Foundation
import XCTest
@testable import DesignKitThemeSelection

@MainActor
final class UserDefaultsThemeSelectionPersistenceTests: XCTestCase {
    private var suiteName: String!
    private var defaults: UserDefaults!

    // `setUp()`/`tearDown()` are nonisolated in XCTest, so a synchronous
    // override cannot inherit this class's `@MainActor` isolation and touching
    // `suiteName`/`defaults` from one is a Swift 6 isolation violation. The
    // `async` overrides DO inherit the class isolation (an actor-isolated async
    // override of a nonisolated async method is legal — the caller awaits the
    // hop), which puts the fixture's lifecycle on the same actor as the test
    // bodies that read it. Same work, same ordering, one owner.
    override func setUp() async throws {
        try await super.setUp()
        suiteName = "test.themeSelection.\(UUID().uuidString)"
        defaults = UserDefaults(suiteName: suiteName)
    }

    override func tearDown() async throws {
        defaults.removePersistentDomain(forName: suiteName)
        try await super.tearDown()
    }

    func test_nothingPersisted_loadsNil() {
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults)
        XCTAssertNil(persistence.loadSelection())
    }

    func test_roundTripsAppearance() {
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults)
        persistence.saveAppearance(.light)
        XCTAssertEqual(persistence.loadSelection(), ThemeSelection(appearance: .light))
    }

    func test_unknownRawLoadsNil() {
        defaults.set("sepia", forKey: UserDefaultsThemeSelectionPersistence.defaultAppearanceKey)
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults)
        XCTAssertNil(persistence.loadSelection())
    }

    func test_legacyFamilyKeyIsIgnored() {
        defaults.set("legacy-family", forKey: "designKit.themeSelection.family")
        defaults.set("dark", forKey: UserDefaultsThemeSelectionPersistence.defaultAppearanceKey)
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults)
        XCTAssertEqual(persistence.loadSelection(), ThemeSelection(appearance: .dark))
        persistence.saveAppearance(.system)
        XCTAssertEqual(defaults.string(forKey: "designKit.themeSelection.family"), "legacy-family") // never touched
    }

    func test_configurableKey() {
        let persistence = UserDefaultsThemeSelectionPersistence(defaults: defaults, appearanceKey: "legacy.appearance")
        persistence.saveAppearance(.light)
        XCTAssertEqual(defaults.string(forKey: "legacy.appearance"), "light")
    }
}
