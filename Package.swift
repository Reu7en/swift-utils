// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "swift-utils",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
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
        )
    ]
)
