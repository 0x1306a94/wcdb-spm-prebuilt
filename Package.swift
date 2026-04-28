// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "wcdb-spm-prebuilt",
     platforms: [
        .iOS(.v12),
        // .watchOS(.v4),
        // .tvOS(.v12),
        .macOS(.v10_13),
        .macCatalyst(.v13),
    ],
    products: [
        .library(name: "WCDBSwift", targets: ["WCDBSwift"]),
        .library(name: "WCDBObjc", targets: ["WCDBObjc"]),
    ],
    targets: [
        .binaryTarget(
            name: "WCDBSwift",
            url: "https://github.com/0x1306a94/wcdb-spm-prebuilt/releases/download/storage.v2.1.16/WCDBSwift.xcframework.zip",
            checksum: "b6e1e86d2445b559118313aad68dc5d9f7728918e1e6ed2564e609f51a37a219"
        ),
        .binaryTarget(
            name: "WCDBObjc",
            url: "https://github.com/0x1306a94/wcdb-spm-prebuilt/releases/download/storage.v2.1.16/WCDBObjc.xcframework.zip",
            checksum: "3aa82c8c7de05430747dc180b5bf5377baa33a73cd6c574c3fb4a55dc886791f"
        ),
    ]
)