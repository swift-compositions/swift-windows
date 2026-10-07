// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-windows",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(
            name: "Windows Kernel",
            targets: ["Windows Kernel"]
        ),
        .library(
            name: "Windows Kernel Descriptor",
            targets: ["Windows Kernel Descriptor"]
        ),
        .library(
            name: "Windows Kernel Socket",
            targets: ["Windows Kernel Socket"]
        ),
        .library(
            name: "Windows Kernel Clock",
            targets: ["Windows Kernel Clock"]
        ),
        .library(
            name: "Windows Kernel File",
            targets: ["Windows Kernel File"]
        ),
        .library(
            name: "Windows Kernel Lock",
            targets: ["Windows Kernel Lock"]
        ),
        .library(
            name: "Windows Kernel Thread",
            targets: ["Windows Kernel Thread"]
        ),
        .library(
            name: "Windows Kernel Process",
            targets: ["Windows Kernel Process"]
        ),
        .library(
            name: "Windows Test Support",
            targets: ["Windows Test Support"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-microsoft/swift-windows-32.git", branch: "main"),

        .package(
            url: "https://github.com/swift-atoms/swift-glob.git",
            branch: "main", traits: ["Parser"]
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-system.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-memory.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-random.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-error.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-path.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-clock.git",
            branch: "main"
        ),
    ],
    targets: [

        .target(
            name: "Windows Kernel Descriptor",
            dependencies: [
                .product(name: "Windows 32 Kernel", package: "swift-windows-32"),
                .product(name: "Error", package: "swift-error"),
            ]
        ),
        .target(
            name: "Windows Kernel",
            dependencies: [
                "Windows Kernel Descriptor",
                .product(name: "Windows 32 Kernel", package: "swift-windows-32"),
                .product(name: "Windows 32 Kernel File", package: "swift-windows-32"),
                .product(name: "Glob", package: "swift-glob"),
                .product(name: "Clock", package: "swift-clock"),
                .product(name: "Error", package: "swift-error"),
                .product(name: "Memory", package: "swift-memory"),
                .product(name: "Random", package: "swift-random"),
                .product(name: "System", package: "swift-system"),
                .product(name: "Path", package: "swift-path"),
            ]
        ),

        .target(
            name: "Windows Kernel Socket",
            dependencies: [
                "Windows Kernel",
                "Windows Kernel Descriptor",
                .product(name: "Windows 32 Kernel Socket", package: "swift-windows-32"),
            ]
        ),

        .target(
            name: "Windows Kernel Clock",
            dependencies: [
                .product(name: "Windows 32 Kernel Clock", package: "swift-windows-32")
            ]
        ),

        .target(
            name: "Windows Kernel File",
            dependencies: [
                "Windows Kernel",
                .product(name: "Windows 32 Kernel File", package: "swift-windows-32"),
            ]
        ),

        .target(
            name: "Windows Kernel Lock",
            dependencies: [
                "Windows Kernel",

                .product(name: "Windows 32 Kernel Lock", package: "swift-windows-32"),
            ]
        ),

        .target(
            name: "Windows Kernel Thread",
            dependencies: [
                "Windows Kernel",
                .product(name: "Windows 32 Kernel", package: "swift-windows-32"),
                .product(name: "Windows 32 Kernel Thread", package: "swift-windows-32"),
            ]
        ),

        .target(
            name: "Windows Kernel Process",
            dependencies: [
                "Windows Kernel",
                .product(name: "Windows 32 Kernel Process", package: "swift-windows-32"),
            ]
        ),
        .target(
            name: "Windows Test Support",
            dependencies: [
                "Windows Kernel"
            ],
            path: "Tests/Support"
        ),
        .testTarget(
            name: "Windows Kernel File Tests",
            dependencies: [
                "Windows Kernel File",
                .product(name: "Windows 32 Kernel File", package: "swift-windows-32"),
            ]
        ),
        .testTarget(
            name: "Windows Kernel Tests",
            dependencies: [
                "Windows Kernel",

                .product(name: "Glob", package: "swift-glob"),

                .product(name: "Path", package: "swift-path"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("Lifetimes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
