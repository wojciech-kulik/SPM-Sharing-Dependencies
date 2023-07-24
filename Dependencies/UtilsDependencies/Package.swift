// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UtilsDependencies",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UtilsDependencies",
            targets: ["UtilsDependencies"]
        )
    ],
    dependencies: [
        .package(path: "../SharedDependencies"),
        .package(url: "https://github.com/onevcat/Kingfisher", .upToNextMajor(from: "7.8.1"))
    ],
    targets: [
        .target(
            name: "UtilsDependencies",
            dependencies: [
                "SharedDependencies",
                "Kingfisher"
            ],
            path: "Sources"
        )
    ]
)
