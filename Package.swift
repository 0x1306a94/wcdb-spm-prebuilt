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
            url: "https://github.com/0x1306a94/wcdb-spm-prebuilt/releases/download/storage.v2.1.15/WCDBSwift.xcframework.zip",
            checksum: "c5867b6cbd282762671f8bd77676045b77b9d7144cc797a6d82ca41f168583fa"
        ),
        .binaryTarget(
            name: "WCDBObjc",
            url: "https://github.com/0x1306a94/wcdb-spm-prebuilt/releases/download/storage.v2.1.15/WCDBObjc.xcframework.zip",
            checksum: "22517d039b83882b509a257b6c36fc00b570245c608320863d731ea023beaec9"
        ),
    ]
)