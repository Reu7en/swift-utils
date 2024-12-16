// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "swift-utils",
    products: [
        .library(
            name: "CoreUtils",
            targets: ["CoreUtils"])
        ,
        .library(
            name: "UIUtils",
            targets: ["UIUtils"]
        )
    ],
    targets: [
        .target(
            name: "CoreUtils",
            dependencies: []
        ),
        .target(
            name: "UIUtils",
            dependencies: ["CoreUtils"]
        ),
        .testTarget(
            name: "CoreUtilsTests",
            dependencies: ["CoreUtils"]
        ),
        .testTarget(
            name: "UIUtilsTests",
            dependencies: ["UIUtils"]
        )
    ]
)
