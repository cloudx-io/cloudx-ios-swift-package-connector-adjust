// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXAdjustConnector",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXAdjustConnector",
            targets: ["CloudXAdjustConnectorPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/adjust/ios_sdk.git",
            from: "5.0.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXAdjustConnector",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-connector-adjust/releases/download/binary/5000000.0.0/CloudXAdjustConnector.xcframework.zip",
            checksum: "81ab356d6e94211c0d68dfb66939dacf3405cfc7bb45c63d210c54a62fc66e0a"
        ),
        .target(
            name: "CloudXAdjustConnectorPackage",
            dependencies: [
                "CloudXAdjustConnector",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "AdjustSdk", package: "ios_sdk"),
            ]
        ),
        .testTarget(
            name: "CloudXAdjustConnectorSwiftTests",
            dependencies: ["CloudXAdjustConnectorPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXAdjustConnectorObjCTests",
            dependencies: ["CloudXAdjustConnectorPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
