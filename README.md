# XGwoth Ads SDK for iOS

`XGrowthAdsSdk` is the iOS SDK package for integrating XGrowth Ads into an iOS application.

## Requirements

- iOS 13.0+
- Xcode with Swift Package Manager or CocoaPods support

## Installation

### Swift Package Manager

Add the package from:

```text
https://github.com/AdsxGrowth/ios-sdk.git
```

Then add the `XGrowthAdsSdk` product to your app target.

### CocoaPods

Add this to your `Podfile`:

```ruby
pod "XGrowthAdsSdk",
    :git => "https://github.com/AdsxGrowth/ios-sdk.git",
    :tag => "1.0.1"
```

Then run:

```bash
pod install
```

## Usage

Import the module:

```swift
import XGrowthAdsSdk
```

Initialize the SDK once during app startup:

```swift
XGrowth.sharedInstance().start { status in
    print("XGrowth Ads initialized: \(String(describing: status))")
}
```

Request an ad with `XGrowthAdLoader`:

```swift
let loader = XGrowthAdLoader()
loader.delegate = self
loader.loadAd(
    adRequestConfiguration: AdRequestConfiguration(
        placement: "your_placement_id",
        viewController: self,
        publisherProvidedId: "publisher-id",
        customTargetingValues: ["key": "value"]
    )
)
```

Example banner callback:

```swift
extension ViewController: MediationAdDelegate {
    func onBannerAdLoaded(bannerAd: MediationBannerAd) {
        guard let bannerView = bannerAd.view else { return }
        view.addSubview(bannerView)
        bannerAd.eventDelegate = self
    }

    func onAdFailedToLoad(error: AdError) {
        print(error.description ?? "Unknown ad load error")
    }
}
```

The repo release version published from this repo is `1.0.0`.
The bundled binary currently reports internal framework version `1.4.0`.
