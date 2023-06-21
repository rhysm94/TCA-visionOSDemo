// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "VisionOSApp",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "AppFeature",
      targets: ["AppFeature"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/rhysm94/swift-composable-architecture", branch: "fix-for-xros")
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "AppFeature",
      dependencies: [
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
      ]
    ),
    .testTarget(
      name: "AppFeatureTests",
      dependencies: ["AppFeature"]
    ),
  ]
)
