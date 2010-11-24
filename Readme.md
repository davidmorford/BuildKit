
# BuildKit

BuildKit is a collection of configurations, scripts and Xcode project templates organization to manage creating, building and using multiple static libraries for iOS applications. BuildKit leverages Xcode multi-layered build settings and always using the latest iOS SDK best practice including minimum deployment version target set and weak linking.

For more information on multi-layered configuration files see : [Build Setting Evaluation and Configuration Files](http://developer.apple.com/library/ios/#documentation/DeveloperTools/Conceptual/XcodeBuildSystem/400-Build_Configurations/build_configs.html)

## Requirements

  * Xcode : 3.2.5
  * SDK : 4.2

## Configuration Defaults

  * Compiler : LLVM/Clang 1.6
  * Compiler Flags : -Xclang -fobjc-nonfragile-abi2

## Xcode Configuration Files (.xcconfig)

Configuration files are a big topic [Add more here]


## Directory Structure

Defined in /Configurations/Settings.xcconfig

* **Applications** -
* **Catalogs** -
* **Libraries** -


## Framework "Like" Static Libraries

Header and linker paths for Cocoa static library projects are  artibrary. In BuildKit, they mirror the structure of Mac OS X frameworks. A Run Script Target Phase for Library projects creates the library directory, copies public and private headers to a versioned directory and then symlinks the Headers, PrivateHeaders and the .a library file to the top of the folder with the library name.(similar to .frameworks). Library projects can also can resource bundles to shared location and for inclusion into application target bundles. The single exception to mirroring the directory layout of Mac OS X frameworks involves the placement of an additional folder with with static libraries name inside Headers and PrivateHeaders folders of the deployed libraries.

Benefits:

* Use of #import <YURLibrary/YURClass.h> header import style in any project that references a static library, application or library. 

* Libraries re-use by multiple applications (and by multiple libraries).

* Proper code completion in Xcode.

Guidelines:

* Libraries should always be built with the latest SDK. Class and symbol existence checks and weak linking frameworks allow user in current Universal applications (ie., iOS 3.2 and 4.1).

* Libraries referencing other libraries need only header and library paths not the library linker flag.

* When adding new classes to a library, be sure to set the header's role to Public or Private. If Private, ensure other libraries or applications using the private headers have the libraries PrivateHeader path specified in the header search paths.


## Shared Library Build Deployment

Application and Library projects can be easily referenced by other application and library projects in the directory tree. Static library projects have a Library.xcconfig file used by the static library target. In this file is a text snippet needs to be copied to Configurations/Libraries.xcconfig. Uncomment and change

When built, libraries are copied to a deployment location path assembled from the following bit of information:
  * Build configiration - Debug, Release, Distribution, etc.
  * Target SDK Name - iphoneos, iphonesimulator
  * Target SDK Version - 4.1, 4.2, etc


## Project Scripts

The Xcode project templates for Static Libraries and Univeral Application.


## Build and Utility Scripts


* Build.command - A shell script for building shared libraries. Will clean and build all library project targets specified in the script for the simulator and device SDK. Add you shared libraries to the script to have them included in the build. Start inside the Scripts directory like this: 

  * ./Build.command 4.1 Debug

* developer-*.sh - Convenience methods to check the Xcode tools path and set the active tools path when using Build.command from the shell.

* Deploy*.sh - Shell scripts used by Run Script Build Phases in Library project templates to assemble, copy and deploy a static library to the deployment path.

* Copy*.sh - Shell scripts used by Run Script Build Phases in Application projects to copy Library resources bundles into an application bundle.


## Version Control

* BuildKit has been used with Subversion and Git. In Subversion, the entire directory structure is usually placed in /trunk and the contents of the trunk is branched or tagged, creating development snapshots or release version tag that are completely buildable. With Git, BuildKit can be easily used as the root of a project repo with a single library and demo application (as is frequent on many public GitHub projects) or in a manner similar to Subversion where numerous libraries and applications live within a master and multiple branches or tags can be used.


## Xcode Project Templates

Xcode projects created with the BuildKit Application or Static Library project templates. (Finish this up...)


### Libraries

Should be created in the Libraries folder. I have a Vendors for libraries from others that I just drop into an empty BuildKit Library project and change the #import headers.


### Applications

Can be created in any top level folder in the Projects root folder. I currently use Applications, Example, Catalogs and Tools.


## History

### November 23, 2010

* Merge develop into master. Major changes include use of the Latest SDK setting available in iOS 4.2 and Xcode 3.2.5.

### October 16, 2010

* Update and refactor for iOS 4.2 and Xcode 3.2.5 (based on Beta 3)

### September 27, 2010

* Update readme.

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
