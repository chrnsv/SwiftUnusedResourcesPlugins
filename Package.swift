// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "SwiftUnusedResourcesPlugins",
    platforms: [.macOS(.v12)],
    products: [
        .plugin(name: "SURBuildToolPlugin", targets: ["SURBuildToolPlugin"]),
    ],
    targets: [
        .plugin(
            name: "SURBuildToolPlugin",
            capability: .buildTool(),
            dependencies: [
                .target(name: "SURBinary"),
            ]
        ),
        .binaryTarget(
            name: "SURBinary",
            url: "https://github.com/mugabe/SwiftUnusedResources/releases/download/0.3.2/sur-0.3.2.artifactbundle.zip",
            checksum: "60e4dff07ab9e692a46180e9d253b01b3f85b1f1b927297a431faacb779e5ebd"
        ),
    ]
)
