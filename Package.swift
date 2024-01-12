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
            checksum: "05f35def69bf05f5f2491f48628015f0a45dd0b5d14289ff18cde566baf24f71"
           ),
        .binaryTarget(
            name: "TXLiteAVSDK_ReplayKitExt",
            url: "https://liteav.sdk.qcloud.com/customer/Pococha/SPM/TXLiteAVSDK_ReplayKitExt.xcframework.zip",
            checksum: "47be461e7520212a28417f16d277a0449cf2cafd743e116db00b64a89f7cc672"
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
