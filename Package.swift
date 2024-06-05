// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TMDBKit",
    platforms: [
        .iOS(.v14)
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
            dependencies: [],
            path: "TMDBKit"),
        .testTarget(
            name: "TMDBKitTests",
            dependencies: ["TMDBKit"],
            path: "TMDBKitTests")
    ]
)
