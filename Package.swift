// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "TrueTime",
    products: [
        .library(
            name: "TrueTime",
            targets: ["TrueTime"]),
        .library(
            name: "CTrueTime",
            targets: ["CTrueTime"])
    ],
    dependencies: [
        .package(url: "https://github.com/typelift/SwiftCheck.git", .upToNextMajor(from: "0.12.0")),
    ],
    targets: [
        .target(
            name: "TrueTime",
            dependencies: ["CTrueTime"]),
        .testTarget(
            name: "TrueTimeTests",
            dependencies: [
                "TrueTime", 
                "Quick", 
                "Nimble", 
                "SwiftCheck"
            ]
        ),
        .systemLibrary(name: "CTrueTime")
    ]
)
