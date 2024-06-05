//
//  Package.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 06/06/24.
//

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
