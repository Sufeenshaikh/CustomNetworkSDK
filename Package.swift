dr.mac@Drs-MacBook-Pro CustomNetworkSDK % nano Package.swift

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CustomNetworkSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CustomNetworkSDK",
            targets: ["CustomNetworkSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "CustomNetworkSDK",
            path: "./XCFrameworks/CustomNetworkSDK.xcframework")
    ]
)


