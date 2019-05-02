// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "schwalbe",
    dependencies: [
        .package(url: "https://github.com/kylef/PathKit", from: "0.8.0")
    ],
    targets: [
        .target(name: "schwalbeLib", dependencies: ["PathKit"]),
        .target(name: "schwalbe", dependencies: ["schwalbeLib"])
    ]
)
