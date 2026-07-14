// swift-tools-version: 6.3
import PackageDescription

let swiftSettings: [SwiftSetting] = [
    .enableExperimentalFeature("StrictConcurrency")
]

let package = Package(
    name: "DesignKit",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
    ],
    products: [
        .library(name: "DesignKitTokens", targets: ["DesignKitTokens"]),
        .library(name: "DesignKitThemes", targets: ["DesignKitThemes"]),
        .library(name: "DesignKitThemeSelection", targets: ["DesignKitThemeSelection"]),
        .library(name: "DesignKitThemeSelectionUI", targets: ["DesignKitThemeSelectionUI"]),
    ],
    targets: [
        .target(
            name: "DesignKitTokens",
            swiftSettings: swiftSettings
        ),
        .target(
            name: "DesignKitThemes",
            dependencies: ["DesignKitTokens"],
            swiftSettings: swiftSettings
        ),
        // UI-free theme selection: two-axis model (family × appearance
        // preference), resolution, persistence protocol, controller.
        // Promoted from RepoPrompt's incubation package (2026-07-14).
        .target(
            name: "DesignKitThemeSelection",
            dependencies: ["DesignKitThemes"],
            swiftSettings: swiftSettings
        ),
        // SwiftUI installation (designTheme + preferredColorScheme).
        .target(
            name: "DesignKitThemeSelectionUI",
            dependencies: ["DesignKitThemeSelection"],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "DesignKitTokensTests",
            dependencies: ["DesignKitTokens"],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "DesignKitThemesTests",
            dependencies: ["DesignKitThemes"],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "DesignKitThemeSelectionTests",
            dependencies: ["DesignKitThemeSelection"],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "DesignKitThemeSelectionUITests",
            dependencies: ["DesignKitThemeSelectionUI"],
            swiftSettings: swiftSettings
        ),
    ],
    swiftLanguageModes: [.v6]
)
