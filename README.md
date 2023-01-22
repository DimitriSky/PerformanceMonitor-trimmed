# PerformanceMonitor

![badge-pms](https://img.shields.io/badge/languages-Swift|ObjC-orange.svg)
![badge-platforms](https://img.shields.io/cocoapods/p/RCBacktrace.svg?style=flat)
![badge-languages](https://img.shields.io/badge/supports-CocoaPods-green.svg)
[![Swift Version](https://img.shields.io/badge/Swift-5.0.x-F16D39.svg?style=flat)](https://developer.apple.com/swift)

Monitoring CPU, Memory, FPS.

The repository was forked and the following changes were made: removed a couple of modules that were causing app crashes, updated for iOS 13, fixed warnings for iOS 16.

## Plugin
* CPUMonitor
* MemoryMonitor
* FPSMonitor

## Features

- [x] Monitor cup usage
- [x] Monitor memory usage
- [x] Monitor fps

![Screen Shot 2019-09-08 at 4.09.41 PM.png](https://upload-images.jianshu.io/upload_images/2086987-4fec99a35eac32c5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## Usage

### setup

```
import UIKit
import PerformanceMonitor

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var performanceMonitor: PerformanceMonitor?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
        performanceMonitor = PerformanceMonitor(displayOptions: [.cpu, .memory, .fps])
        performanceMonitor?.start()
    }
```



≈ Requirements

- iOS 13.0+
- Swift 5.x

## Installation

### CocoaPods
[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. To integrate Aspect into your Xcode project using CocoaPods, specify it in your `Podfile`:

```
platform :ios, '13.0'

target 'ProjectName' do
  use_frameworks!

  pod 'PerformanceMonitor', :git => 'https://github.com/DimitriSky/PerformanceMonitor-trimmed.git', :commit => 'f0a63b622cbf0b6acf2d5a350725b8f1d819a1f6'

end
```

## Thanks

[SwiftTrace](https://github.com/johnno1962/SwiftTrace)  
[GDPerformanceView-Swift](https://github.com/dani-gavrilov/GDPerformanceView-Swift)  
[SystemEye](https://github.com/zixun/SystemEye)  
[AppPerformance](https://github.com/SilongLi/AppPerformance)  

## License

Aspect is released under the MIT license. See LICENSE for details.
