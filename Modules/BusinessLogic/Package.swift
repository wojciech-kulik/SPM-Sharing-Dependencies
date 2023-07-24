// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BusinessLogic",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "BusinessLogic",
            targets: ["BusinessLogic"]
        )
    ],
    dependencies: [
        .package(path: "../Dependencies/SharedDependencies")
    ],
    targets: [
        .target(
            name: "BusinessLogic",
            dependencies: ["SharedDependencies"],
            path: "Sources"
        )
    ]
)
