// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TRTCProfessionalKit",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "TRTCProfessional",
            targets: ["TXLiteAVSDK_Professional_SPM"]),
        .library(
            name: "TRTCReplayKitExt",
            targets: ["TXLiteAVSDK_ReplayKitExt"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "TXLiteAVSDK_Professional",
            url: "https://liteav.sdk.qcloud.com/customer/Pococha/SPM/TXLiteAVSDK_Professional.xcframework.zip",
            checksum: "806872867596d32cf2a37f1ac29136418baebd28fe3bb3817e196c70da938db8"
           ),
        .binaryTarget(
            name: "TXLiteAVSDK_ReplayKitExt",
            url: "https://liteav.sdk.qcloud.com/customer/Pococha/SPM/TXLiteAVSDK_ReplayKitExt.xcframework.zip",
            checksum: "c6059b9782be6a847d3f27a69fa54385f12ab79f07e24efdd9ff4bd1da3f344d"
            ),
        .target(
            name: "TXLiteAVSDK_Professional_SPM",
            dependencies: [
                .target(name: "TXLiteAVSDK_Professional")
            ],
            sources: ["trtc_swift_package.swift"],
            linkerSettings: [
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreServices"),
                .linkedFramework("Accelerate"),
                .linkedFramework("ReplayKit"),
                .linkedLibrary("c++")
            ]
        )
    ]
)
