// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "Foveto",
    platforms: [
        .iOS(.v17),
        .macOS(.v13)
    ],
    products: [
        .library(name: "FovetoCore", targets: ["FovetoCore"])
    ],
    targets: [
        .target(name: "FovetoCore"),
        .testTarget(name: "FovetoCoreTests", dependencies: ["FovetoCore"])
    ]
)
