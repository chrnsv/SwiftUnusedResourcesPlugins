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
            url: "https://github.com/mugabe/SwiftUnusedResources/releases/download/0.3.0/sur-0.3.0.artifactbundle.zip",
            checksum: "86e5acf8e20e6af9efde86373e89f4eeeddf42accc25c3ce885c9ecf7d94eead"
        ),
    ]
)
