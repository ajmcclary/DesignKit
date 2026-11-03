import DesignKitThemes
import XCTest
@testable import DesignKitThemeSelection

@MainActor
final class ThemeSelectionControllerTests: XCTestCase {
    private final class SpyPersistence: ThemeSelectionPersistence {
        var stored: ThemeSelection?
        var savedAppearances: [ThemeAppearancePreference] = []
        func loadSelection() -> ThemeSelection? { stored }
        func saveAppearance(_ appearance: ThemeAppearancePreference) { savedAppearances.append(appearance) }
    }

    private final class SpyApplier: ThemeAppearanceApplying {
        var applied: [ThemeAppearancePreference] = []
        func applySystemAppearance(_ preference: ThemeAppearancePreference) { applied.append(preference) }
    }

    func test_initLoadsPersistedSelection() {
        let persistence = SpyPersistence()
        persistence.stored = ThemeSelection(appearance: .light)
        let controller = ThemeSelectionController(persistence: persistence)
        XCTAssertEqual(controller.selection, ThemeSelection(appearance: .light))
    }

    func test_initFallsBackToDefault() {
        let controller = ThemeSelectionController(
            persistence: SpyPersistence(),
            defaultSelection: ThemeSelection(appearance: .dark))
        XCTAssertEqual(controller.selection, ThemeSelection(appearance: .dark))
    }

    func test_initDoesNotApplyAppearance() {
        let applier = SpyApplier()
        _ = ThemeSelectionController(persistence: SpyPersistence(), appearanceApplier: applier)
        XCTAssertTrue(applier.applied.isEmpty)
    }

    func test_defaultSelectionIsSystem() {
        let controller = ThemeSelectionController(persistence: SpyPersistence())
        XCTAssertEqual(controller.selection, ThemeSelection(appearance: .system))
    }

    func test_setAppearance_persistsAppliesReturnsTrue() {
        let persistence = SpyPersistence()
        let applier = SpyApplier()
        let controller = ThemeSelectionController(persistence: persistence, appearanceApplier: applier)
        XCTAssertTrue(controller.setAppearance(.dark))
        XCTAssertEqual(controller.selection.appearance, .dark)
        XCTAssertEqual(persistence.savedAppearances, [.dark])
        XCTAssertEqual(applier.applied, [.dark])
        XCTAssertFalse(controller.setAppearance(.dark))
        XCTAssertEqual(persistence.savedAppearances, [.dark])
    }

    func test_refresh_picksUpExternalChange() {
        let persistence = SpyPersistence()
        persistence.stored = ThemeSelection(appearance: .system)
        let controller = ThemeSelectionController(persistence: persistence)
        persistence.stored = ThemeSelection(appearance: .dark)
        XCTAssertTrue(controller.refreshFromPersistence())
        XCTAssertEqual(controller.selection, ThemeSelection(appearance: .dark))
        XCTAssertFalse(controller.refreshFromPersistence())
    }

    func test_themeForSystemAppearance() {
        let persistence = SpyPersistence()
        persistence.stored = ThemeSelection(appearance: .system)
        let controller = ThemeSelectionController(persistence: persistence)
        XCTAssertEqual(controller.theme(for: .light), Theme.light)
        XCTAssertEqual(controller.theme(for: .dark), Theme.dark)
    }
}
