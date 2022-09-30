// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XLPagerTabStrip",
    platforms: [.iOS(.v11),],
    products: [
        .library(name: "XLPagerTabStrip", targets: ["XLPagerTabStrip"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "FXPageControl", path: "FXPageControl.xcframework"),
        .target(
            name: "XLPagerTabStrip",
            dependencies: ["FXPageControl"],
            exclude: ["Info.plist"],
            resources: [.process("Resources")],
            publicHeadersPath: "XLPagerTabStrip"
        ),
        .testTarget(
            name: "XLPagerTabStripTests",
            dependencies: ["XLPagerTabStrip"],
            exclude: ["Info.plist"]
        ),
    ]
)
