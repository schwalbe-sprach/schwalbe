import PackageDescription

let package = Package(
    name: "schwalbe",
    targets: [
        Target(name: "schwalbe", dependencies: ["schwalbeLib"]),
        Target(name: "schwalbeLib")
    ],
    dependencies: [
        .Package(url: "https://github.com/kylef/PathKit", majorVersion: 0, minor: 8)
    ]
)
