import PackageDescription

let package = Package(
    name: "schwalbe",
    dependencies: [
        .Package(url: "https://github.com/kylef/PathKit", majorVersion: 0, minor: 8)
    ]
)
