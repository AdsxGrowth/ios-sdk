Pod::Spec.new do |s|
  s.name              = "XGrowthAdsSdk"
  s.version           = "1.6.1"
  s.summary           = "XGrowth Ads SDK for iOS applications."
  s.description       = "XGrowth Ads SDK distributed as a vendored XCFramework for iOS."
  s.homepage          = "https://github.com/AdsxGrowth/ios-sdk"
  s.license           = { :type => "MIT", :file => "LICENSE" }
  s.authors           = { "XGrowth" => "sdk@thexgrowth.com" }
  s.source            = {
    :git => "https://github.com/AdsxGrowth/ios-sdk.git",
    :tag => s.version.to_s
  }
  s.platform          = :ios, "13.0"
  s.swift_version     = "5.0"
  s.vendored_frameworks = "Frameworks/XGrowthAdsSdk.xcframework"
end
