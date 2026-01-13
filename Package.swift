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
            url: "https://github.com/mugabe/SwiftUnusedResources/releases/download/0.1.1/sur-0.1.1.artifactbundle.zip",
            checksum: "b9a590d702ca50f442c713d3082a9505bc156b259fe4b0211e1964111bac5838"
        ),
    ]
)
