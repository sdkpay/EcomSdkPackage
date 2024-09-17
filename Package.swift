// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EcomSdkPackage",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "EcomSdkPackage",
            targets: ["EcomSdkPackage"]),
    ],
    targets: [
        .binaryTarget(name: "EcomSdk",
                      path: "EcomSdk.xcframework"),
        .target(name: "SPaySdkPackage",
                dependencies: [
                    .target(name: "EcomSdk")
                ],
                path: "./"
    )
    ]
)
