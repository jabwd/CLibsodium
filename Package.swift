// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CLibsodium",
    pkgConfig: "libsodium",
    providers: [
	.brew(["libsodium"]),
        .apt(["libsodium-dev"])
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CLibsodium",
            targets: ["CLibsodium"]),
        ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CLibsodium",
            dependencies: []
        )
    ]
)

