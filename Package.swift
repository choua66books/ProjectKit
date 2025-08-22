// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "ProjectKit",
    products: [
        .library(
            name: "ProjectKit",
            targets: ["ProjectKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ProjectKit",
            dependencies: []),
    ]
)
