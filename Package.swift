// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// Setting up this file: https://www.pointfree.co/episodes/ep171-modularization-part-1

let package = Package(
    name: "GBHFacebookImagePicker",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "GBHFacebookImagePicker", targets: ["GBHFacebookImagePicker"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/facebook/facebook-ios-sdk",
                 from: "17.0.3")
    ],
    targets: [
        .target(name: "GBHFacebookImagePicker",
                dependencies: [
                    .product(name: "FacebookCore", package: "facebook-ios-sdk"),
                    .product(name: "FacebookLogin", package: "facebook-ios-sdk")
                ],
                path: "GBHFacebookImagePicker/Classes",
                publicHeadersPath: "."
        ),
    ]
)
