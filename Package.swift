// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "MyGame",
  dependencies: [
    .package(url: "https://github.com/flyingsl0ths/mylib", exact: "1.2.0"),
    .package(url: "https://github.com/STREGAsGate/Raylib.git", branch: "master"),
  ],
  targets: [
    .executableTarget(
      name: "MyGame",
      dependencies: [
        .product(name: "MyLib", package: "mylib"),
        "Raylib",
      ])
  ]
)
