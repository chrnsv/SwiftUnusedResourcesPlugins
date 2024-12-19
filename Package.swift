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
            url: "https://github.com/mugabe/SwiftUnusedResources/releases/download/0.0.10/sur-0.0.10.artifactbundle.zip",
            checksum: "bd0b845e9c12e9a2e9fbdd3c686c8f1334013758d93182470c2d755e4d7d975d"
        ),
    ]
)
