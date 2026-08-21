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
            url: "https://github.com/swift-primitives/swift-glob-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-system-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-memory-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-random-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-equation-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-hash-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-error-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-path-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-clock-primitives.git",
            branch: "main"
        ),
    ],
    targets: [

        .target(
            name: "Windows Kernel Descriptor",
            dependencies: [
                .product(name: "Windows 32 Kernel", package: "swift-windows-32"),
                .product(name: "Error Primitives", package: "swift-error-primitives"),
                .product(name: "Equation Primitives", package: "swift-equation-primitives"),
                .product(name: "Hash Primitives", package: "swift-hash-primitives"),
            ]
        ),
        .target(
            name: "Windows Kernel",
            dependencies: [
                "Windows Kernel Descriptor",
                .product(name: "Windows 32 Kernel", package: "swift-windows-32"),
                .product(name: "Windows 32 Kernel File", package: "swift-windows-32"),
                .product(name: "Glob Primitives", package: "swift-glob-primitives"),
                .product(name: "Clock Primitives", package: "swift-clock-primitives"),
                .product(name: "Error Primitives", package: "swift-error-primitives"),
                .product(name: "Memory Primitives", package: "swift-memory-primitives"),
                .product(name: "Random Primitives", package: "swift-random-primitives"),
                .product(name: "System Primitives", package: "swift-system-primitives"),
                .product(name: "Path Primitives", package: "swift-path-primitives"),
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

                .product(name: "Glob Primitives", package: "swift-glob-primitives"),

                .product(name: "Path Primitives", package: "swift-path-primitives"),
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
