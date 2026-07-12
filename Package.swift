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
    ],
    swiftLanguageModes: [.v6]
)
