# AppLovin MAX - iOS InMobi Mediation Adapter

The AppLovin MAX InMobi mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-InMobi
   ```
3. Select **Exact Version** and enter the encoded version (e.g. `1103000.0.0` for adapter version `11.3.0.0`).
4. Add the `AppLovinMediationInMobiAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-InMobi.git",
        exact: "1103000.0.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`InMobiSDK`](https://github.com/InMobi/InMobiSDK-Swift-Package) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://support.axon.ai/en/max/ios/overview/integration)
