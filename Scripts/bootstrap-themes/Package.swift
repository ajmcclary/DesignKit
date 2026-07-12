// swift-tools-version: 6.3
import PackageDescription

// One-time transcription tool: decodes CodeEditorPlugin's bundled
// zed-trek.json with its battle-tested lenient loader and emits DesignKit
// Theme literals. Runs only inside the workspace checkout; never part of
// DesignKit's build.
let package = Package(
    name: "bootstrap-themes",
    platforms: [.macOS("26.3")],
    dependencies: [
        .package(path: "../../../CodeEditorPlugin")
    ],
    targets: [
        .executableTarget(
            name: "bootstrap-themes",
            dependencies: [
                .product(name: "CodeEditorPlugin", package: "CodeEditorPlugin")
            ]
        )
    ]
)
