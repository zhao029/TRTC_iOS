# TRTC SDK

_[简体中文](README-zh_CN.md) | English_
## Overview

Leveraging Tencent's many years of experience in network and audio/video technologies, Tencent Real-Time Communication (TRTC) offers solutions for group audio/video calls and low-latency interactive live streaming. With TRTC, you can quickly develop cost-effective, low-latency, and high-quality interactive audio/video services. [Learn more](https://www.tencentcloud.com/document/product/647/35078)...

> We offer SDKs for web, Android, iOS, Windows, Flutter, WeChat Mini Program, and [other mainstream platforms](https://github.com/LiteAVSDK?q=TRTC_&type=all&sort=).



## Changelog
### **Version 10.7 @ 2022.09.20**

**New features:**

- All platforms: Mixing Stream supports adjusting the volume of each input stream, see [TRTCMixUser](https://cloud.tencent.com/document/product/647/79626#5934a926ba45ac0d5c9bd8632d3d44b5).soundLevel.
- All platforms: Added [onRemoteAudioStatusUpdated](https://cloud.tencent.com/document/product/647/79621#80ffbac8268b90337b6e8d4a8af2f997) callback, which can be used to better identify and monitor remote audio stream status.

**Function optimization:**

- All platforms: Upgraded the encoding core to improve the picture quality of screen sharing scenes.
- All platforms: Optimized the encoding code control effect under weak network.

**Bug fixes:**

- iOS: Fixed the issue that the volume of some iPad devices was low.
- Android: Fixed the problem that the bluetooth headset is occasionally connected but the sound is played out.
- All platforms: Fixed the occasional crash problem in frequent check-in and check-out scenarios.
For the release notes of earlier versions, click [More](https://www.tencentcloud.com/document/product/647/39426).


## Contents

This directory contains the TRTC-API-Example source code for iOS:
- TRTC-API-Example-OC: The simplest demos written in Objective-C, including those for basic features such as audio call and video call as well as some advanced features
```
├─ TRTC-API-Example-OC // TRTC API examples, including those for basic features such as audio call and video call as well as some advanced features
│  ├─ Basic                 // Demos for TRTC basic features
│  │  ├─ AudioCall                 // Demo for audio call in TRTC
│  │  ├─ VideoCall                 // Demo for video call in TRTC
│  │  ├─ Live                      // Demo for interactive video live streaming in TRTC
│  │  ├─ VoiceChatRoom             // Demo for interactive audio live streaming in TRTC
│  │  ├─ ScreenShare               // Demo for screen sharing live streaming in TRTC
│  ├─ Advanced              // Demos for TRTC advanced features
│  │  ├─ StringRoomId              // Demo for string room ID in TRTC
│  │  ├─ SetVideoQuality           // Demo for video quality setting in TRTC
│  │  ├─ SetAudioQuality           // Demo for audio quality setting in TRTC
│  │  ├─ SetRenderParams           // Demo for rendering control in TRTC
│  │  ├─ SpeedTest                 // Demo for network speed test in TRTC
│  │  ├─ PushCDN                   // Demo for CDN push in TRTC
│  │  ├─ CustomCamera              // Demo for custom video capturing and rendering in TRTC
│  │  ├─ SetAudioEffect            // Demo for sound effect configuration in TRTC
│  │  ├─ SetBackgroundMusic        // Demo for background music configuration in TRTC
│  │  ├─ LocalVideoShare           // Demo for local video file sharing in TRTC
│  │  ├─ LocalRecord               // Demo for local video recording in TRTC
│  │  ├─ JoinMultipleRoom          // Demo for multi-room join in TRTC
│  │  ├─ SEIMessage                // Demo for SEI message sending/receiving in TRTC
│  │  ├─ SwitchRoom                // Demo for quick room switch in TRTC
│  │  ├─ RoomPk                    // Demo for cross-room competition in TRTC
│  │  ├─ ThirdBeauty               // Demo for third-party beauty filters in TRTC
│  
├─ SDK 
│  ├─ TXLiteAVSDK_TRTC.framework          // If you download the Lite Edition zip package, this folder will appear after decompression
│  ├─ TXLiteAVSDK_Professional.framework  // If you download the Pro Edition zip package, this folder will appear after decompression
│  ├─ TXLiteAVSDK_Enterprise.framework    // If you download the Enterprise Edition zip package, this folder will appear after decompression

```



## Contact Us
- If you have questions, see [FAQs](https://www.tencentcloud.com/document/product/647/36057).

- To learn about how the TRTC SDK can be used in different scenarios, see [Sample Code](https://www.tencentcloud.com/document/product/647/42963).

- For complete API documentation, see [SDK API Documentation](https://www.tencentcloud.com/document/product/647/35119).

- Communication & Feedback   
Welcome to join our Telegram Group to communicate with our professional engineers! We are more than happy to hear from you~
Click to join: [https://t.me/+EPk6TMZEZMM5OGY1](https://t.me/+EPk6TMZEZMM5OGY1)   
Or scan the QR code   
  <img src="https://qcloudimg.tencent-cloud.cn/raw/79cbfd13877704ff6e17f30de09002dd.jpg" width="300px">    