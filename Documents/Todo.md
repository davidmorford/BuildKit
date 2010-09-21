
# BuildKit Todo

## Known Issues

 * New iOS SDK releases require the SDKROOT value be changed manually for each Xcode project at the **project** level. This will get Simulator and Device SDKs to show up in the Overview drop down (and others) in the Xcode toolbar.  Xcode began ignoring the value set for SDKROOT at the project level with the release of iOS 4.0 SDK, thus requiring this tedious task be done for every Xcode project for each final SDK release with a new iOS version number instead of changing a few characters or the imported Platform-n.n.xcconfig file in Configurations/Platform.xcconfig. Radar issue number : [rdar://8192536](http://openradar.appspot.com/8192536)

 * No testing has been done with iOS 4.2 SDK.

 * No information yet on Xcode 4 as it is currently covered under by NDA but it is being tracked.