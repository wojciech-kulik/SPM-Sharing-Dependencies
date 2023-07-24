// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedDependencies",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SharedDependencies",
            targets: ["SharedDependencies"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", exact: "2.8.3"),
        .package(url: "https://github.com/Swinject/SwinjectAutoregistration.git", exact: "2.8.3"),
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0")
    ],
    targets: [
        .target(
            name: "SharedDependencies",
            dependencies: [
                "Swinject",
                "SwinjectAutoregistration",
                "BigInt"
            ],
            path: "Sources"
        )
    ]
)
