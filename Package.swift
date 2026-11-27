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
            url: "https://github.com/mugabe/SwiftUnusedResources/releases/download/0.5.0/sur-0.5.0.artifactbundle.zip",
            checksum: "8f9bf3f76bcf4720916a59be01e1ab066c8243c8740f80685b260e5ad7f268bf"
        ),
    ]
)
