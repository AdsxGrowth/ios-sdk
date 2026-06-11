// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "XGrowthAdsSdk",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "XGrowthAdsSdk",
            targets: ["XGrowthAdsSdk"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "XGrowthAdsSdk",
            path: "Frameworks/XGrowthAdsSdk.xcframework"
        ),
    ]
)
