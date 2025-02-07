// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SectionReaderDemo",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v7),
        .macOS(.v10_15),
        .visionOS(.v1)
    ],
    dependencies: [
        .package(path: "../")
    ],
    targets: [
        .executableTarget(
            name: "SectionReaderDemo",
            dependencies: ["SectionReader"],
            swiftSettings: [.enableExperimentalFeature("SymbolLinkageMarkers")]
        ),
    ]
)
