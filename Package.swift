// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TMDBKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "TMDBKit",
            targets: ["TMDBKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TMDBKit",
            dependencies: []),
        .testTarget(
            name: "TMDBKitTests",
            dependencies: ["TMDBKit"]),
    ]
)
