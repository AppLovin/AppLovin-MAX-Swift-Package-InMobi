// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationInMobiAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationInMobiAdapter",
            targets: ["AppLovinMediationInMobiAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git", exact: "11.3.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationInMobiAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationInMobiAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationInMobiAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/inmobi-adapter/AppLovinMediationInMobiAdapter-11.3.0.1.zip",
            checksum: "b460199258dd68d023e4d1bfb7e35bff904ea0690a741cfbe8a6df1d8405a247"
        )
    ]
)
