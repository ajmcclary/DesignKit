import DesignKitThemes
import XCTest
@testable import DesignKitThemeSelection

@MainActor
final class ThemeSelectionControllerTests: XCTestCase {
    private final class SpyPersistence: ThemeSelectionPersistence {
        var stored: ThemeSelection?
        var savedFamilies: [Theme.Family] = []
        var savedAppearances: [ThemeAppearancePreference] = []
        func loadSelection() -> ThemeSelection? { stored }
        func saveFamily(_ family: Theme.Family) { savedFamilies.append(family) }
        func saveAppearance(_ appearance: ThemeAppearancePreference) { savedAppearances.append(appearance) }
    }

    private final class SpyApplier: ThemeAppearanceApplying {
        var applied: [ThemeAppearancePreference] = []
        func applySystemAppearance(_ preference: ThemeAppearancePreference) { applied.append(preference) }
    }

    func test_initLoadsPersistedSelection() {
        let persistence = SpyPersistence()
        persistence.stored = ThemeSelection(family: .redAlert, appearance: .light)
        let controller = ThemeSelectionController(persistence: persistence)
        XCTAssertEqual(controller.selection, ThemeSelection(family: .redAlert, appearance: .light))
    }

    func test_initFallsBackToDefault() {
        let controller = ThemeSelectionController(
            persistence: SpyPersistence(),
            defaultSelection: ThemeSelection(family: .command, appearance: .dark))
        XCTAssertEqual(controller.selection, ThemeSelection(family: .command, appearance: .dark))
    }

    func test_initDoesNotApplyAppearance() {
        let applier = SpyApplier()
        _ = ThemeSelectionController(persistence: SpyPersistence(), appearanceApplier: applier)
        XCTAssertTrue(applier.applied.isEmpty)
    }

    func test_setFamily_persistsAppliesReturnsTrue() {
        let persistence = SpyPersistence()
        let applier = SpyApplier()
        let controller = ThemeSelectionController(persistence: persistence, appearanceApplier: applier)
        XCTAssertTrue(controller.setFamily(.sickBay))
        XCTAssertEqual(controller.selection.family, .sickBay)
        XCTAssertEqual(persistence.savedFamilies, [.sickBay])
        XCTAssertEqual(applier.applied, [controller.selection.appearance])
    }

    func test_setFamily_sameValueIsInert() {
        let persistence = SpyPersistence()
        let applier = SpyApplier()
        let controller = ThemeSelectionController(persistence: persistence, appearanceApplier: applier)
        XCTAssertFalse(controller.setFamily(controller.selection.family))
        XCTAssertTrue(persistence.savedFamilies.isEmpty)
        XCTAssertTrue(applier.applied.isEmpty)
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
        persistence.stored = ThemeSelection(family: .lcars, appearance: .system)
        let controller = ThemeSelectionController(persistence: persistence)
        persistence.stored = ThemeSelection(family: .borgCube, appearance: .dark)
        XCTAssertTrue(controller.refreshFromPersistence())
        XCTAssertEqual(controller.selection, ThemeSelection(family: .borgCube, appearance: .dark))
        XCTAssertFalse(controller.refreshFromPersistence())
    }

    func test_themeForSystemAppearance() {
        let persistence = SpyPersistence()
        persistence.stored = ThemeSelection(family: .lcars, appearance: .system)
        let controller = ThemeSelectionController(persistence: persistence)
        XCTAssertEqual(controller.theme(for: .light).id, Theme.Family.lcars.theme(for: .light).id)
        XCTAssertEqual(controller.theme(for: .dark).id, Theme.Family.lcars.theme(for: .dark).id)
    }
}
