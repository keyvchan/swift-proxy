// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-proxy",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "swift-proxy",
            targets: ["swift-proxy"]
        ),
        .executable(
            name: "SocksServer",
            targets: ["SocksServer"]
        ),
        .executable(
            name: "SocksClient",
            targets: ["SocksClient"]
        ),
        .executable(
            name: "HTTPServer",
            targets: ["HTTPServer"]
        ),
        .executable(
            name: "HTTPClient",
            targets: ["HTTPClient"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-nio", from: "2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "swift-proxy",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
            ]
        ),
        .testTarget(
            name: "swift-proxyTests",
            dependencies: ["swift-proxy"]
        ),

        .target(
            name: "SocksServer",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
            ]
        ),
        .target(
            name: "SocksClient",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
            ]
        ),
        .target(
            name: "HTTPServer",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
            ]
        ),
        .target(
            name: "HTTPClient",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
            ]
        ),
    ]
)
