
# BuildKit

BuildKit is a collection of configurations, scripts and Xcode project templates organization to manage creating, using, building and sharing static libraries and iOS applications. BuildKit leverages multi-layered build settings in Xcode. 

For more information on multi-layered configuration files see : [Build Setting Evaluation and Configuration Files](http://developer.apple.com/library/ios/#documentation/DeveloperTools/Conceptual/XcodeBuildSystem/400-Build_Configurations/build_configs.html)


## Requirements

The project, via BuildKit xcconfigs, currently works with Xcode 3.2.4 with theses settings:

  * SDK : iOS 4.1
  * Minimim Deployment Target : 3.2
  * Weak Linked : UIKit.framework
  * Compiler : LLVM/Clang 1.5
  * Compiler Flags :
    * -Xclang -fobjc-nonfragile-abi2
    * -D__IPHONE_OS_VERSION_MIN_REQUIRED=030200

The default assumption is that of always using the latest released iOS SDK with the minimum deployment version target set, weak linking frameworks and using proper symbol and class checking techniques in applications and libraries.


## Xcode Configuration Files (.xcconfig)

Configuration files are a big topic [Add more here]


## Directory Structure

Defined in /Configurations/Settings.xcconfig

  * **Applications** -

  * **Catalogs** -

  * **Libraries** -


## Framework "Like" Static Libraries

BuildKit Cocoa static library projects mirror the structure Mac OS X frameworks. This brings the #import <YURLibrary/YURClass.h> header import style in any project that references a static library, application or library. A Run Script Target Phase for Library projects creates the library directory, copies public and private headers to a versioned directory and symlinks Headers, PrivateHeaders and the .a library file to the top of the folder with the library name.(similar to .frameworks). Library projects can also can resource bundles to shared location and for inclusion into application target bundles.

Libraries should always be built with the latest SDK with proper class and symbol checking and weak linking of frameworks when multiple shared libraries are merged and linked into an application binary.


## Shared Library Build Deployment

Application and Library projects can be easily referenced by other application and library projects in the directory tree. Static library projects have a Library.xcconfig file used by the static library target. In this file is a text snippet needs to be copied to Configurations/Libraries.xcconfig. Uncomment and change

When built, libraries are copied to a deployment location path assembled from the following bit of information:
  * Build configiration - Debug, Release, Distribution, etc.
  * Target SDK Name - iphoneos, iphonesimulator
  * Target SDK Version - 4.1, 4.2, etc


## Project Scripts

The Xcode project templates for Static Libraries and Univeral Application.


## Build and Utility Scripts


* Build.command - A shell script for building shared libraries. Will clean and build all library project targets specified in the script for the simulator and device SDK. Start inside the Scripts directory like this: 

  * ./Build.command 4.1 Debug

* developer-*.sh - Convenience methods to check the Xcode tools path and set the active tools path when using Build.command from the shell.

* Deploy*.sh - Shell scripts used by Run Script Build Phases in Library project templates to assemble, copy and deploy a static library to the deployment path.

* Copy*.sh - Shell scripts used by Run Script Build Phases in Application projects to copy Library resources bundles into an application bundle.


## Version Control

* BuildKit has been used with Subversion and Git. In Subversion, the entire directory structure is usually placed in /trunk and the contents of the trunk is branched or tagged, creating development snapshots or release version tag that are completely buildable. With Git, BuildKit can be easily used as the root of a project repo with a single library and demo application (as is frequent on many public GitHub projects) or in a manner similar to Subversion where numerous libraries and applications live within a master and multiple branches or tags can be used.


## Xcode Project Templates

Xcode projects created with the BuildKit Application or Static Library project templates. (Finish this up…)


### Libraries

Should be created in the Libraries folder. I have a Vendors for libraries from others that I just drop into an empty BuildKit Library project and change the #import headers.


### Applications

Can be created in any top level folder in the Projects root folder. I currently use Applications, Example, Catalogs and Tools.


## Known Issues

  * New iOS SDK releases require the SDKROOT value be changed manually for each Xcode project at the **project** level. This will get Simulator and Device SDKs to show up in the Overview drop down (and others) in the Xcode toolbar.  Xcode began ignoring the value set for SDKROOT at the project level with the release of iOS 4.0 SDK, thus requiring this tedious task be done for every Xcode project for each final SDK release with a new iOS version number instead of changing a few characters or the imported Platform-n.n.xcconfig file in Configurations/Platform.xcconfig. Radar issue number : [rdar://8192536](http://openradar.appspot.com/8192536)


## History

### September 17, 2010

  * Add simple examples
  * Release updates to Github

### September 2, 2010 (Internal)

  * Update to iOS 4.1 SDK

### June 18, 2010 (Internal)

  * Migrate from Subversion to Git.

### June 1, 2010 (Internal)

  * Deal with iOS 4.0 and Xcode 3.2.4 *ignoring* SDK_ROOT set from .xcconfig on project root.

### November 3, 2009

  * Push basics to Github to share with interested people at Seattle iPhone Tech Talk.

### June 2009

  * Formalize from projects and exiting Mac OS X build structure.


## License and Copyright

BuildKit is BSD licensed. The full text of the license is located in Documents/License.md
