// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "UsercentricsUI",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11)
    ],
    products: [
        .library(
            name: "UsercentricsUI",
            targets: ["UsercentricsUITarget"]
        )
    ],
    dependencies: [
        .package(name: "Usercentrics", url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", from: "2.19.0")
    ],
    targets: [
        .binaryTarget(
            name: "UsercentricsUIFramework",
            url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui/downloads/UsercentricsUI-2.19.0.xcframework.zip",
            checksum: "44ec6c0c3d7897abfefc225a64f961169390970d4eda63ea8c45df468758c3d3"
        ),
        .target(
            name: "UsercentricsUITarget",
            dependencies: ["Usercentrics", "UsercentricsUIFramework"],
            sources: ["Sources/UsercentricsUITarget"]
        ),
    ]
)
