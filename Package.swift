// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FistPackage",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ], products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FistPackage",
            type: .dynamic, targets: ["FistPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk", from: "16.0.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.5.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FistPackage",
            dependencies: []),
        .testTarget(
            name: "FistPackageTests",
            dependencies: ["FistPackage"]),
    ]
)
