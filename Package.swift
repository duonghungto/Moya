// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Moya",
    platforms: [
        .macOS(.v14),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4)
    ],
    products: [
        .library(name: "Moya", targets: ["Moya"]),
        .library(name: "CombineMoya", targets: ["CombineMoya"])
    ],
    dependencies: [
        .package(url: "https://github.com/DuongTH-NiceTube/Alamofire.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(
            name: "Moya",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ]
        ),
        .target(
            name: "CombineMoya",
            dependencies: [
                "Moya"
            ]
        ) // dev
    ]
)
