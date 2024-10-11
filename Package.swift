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
            url: "https://liteav.sdk.qcloud.com/customer/Pococha/11.9/TXLiteAVSDK_TRTC_iOS_11.9.6.1501_SDK.zip",
            checksum: "4f0c2f718c2caf3260221c3bfd591eb18ab3b0783486ec45512b0e3e48e5dd43"
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
