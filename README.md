# FoundationExtensions

[![badge-travis]][url-travis] [![badge-codecov]][url-codecov] [![badge-docs]][url-foundation-extensions-docs] [![badge-carthage]][url-carthage] [![badge-license]][url-license] [![badge-twitter]][url-twitter] [![badge-version]][url-foundation-extensions]

1. [Introduction](#introduction)
2. [Requirements](#requirements)
3. [Installation](#installation)
	- [Carthage](#carthage)
	- [CocoaPods](#cocoapods)
	- [Swift Package Manager](#swift-package-manager)
	- [Manually](#manually)
4. [Usage Examples](#usage-examples)
6. [Contribute](#contribute)
7. [Meta](#meta)
	- [Credits and References](#credits-and-references)

## Introduction

## Requirements
- iOS 8.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.1+
- Swift 3.0+

## Installation

### Carthage

You can use [Carthage][url-carthage] to install `FoundationExtensions` by adding it to your [`Cartfile`][url-carthage-cartfile]:

```
github "nsagora/foundation-extensions"
```

Run `carthage update` to build the framework and drag the built `FoundationExtensions.framework` into your Xcode project.

<details>
<summary>Setting up Carthage</summary>

[Carthage][url-carthage] is a decentralised dependency manager that builds your dependencies and provides you with binary frameworks.

You can install [Carthage][url-carthage] with [Homebrew][url-homebrew] using the following command:

```bash
$ brew update
$ brew install carthage
```

</details>

### CocoaPods

You can use [CocoaPods][url-cocoapods] to install `FoundationExtensions` by adding it to your [`Podfile`][url-cocoapods-podfile]:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target 'YOUR_TARGET_NAME' do
	pod 'FoundationExtensions'
end
```

Then, run the following command:

```bash
$ pod install
```

Note that this requires CocoaPods version 1.0.0, and your iOS deployment target to be at least 8.0.

<details>
<summary>Setting up CocoaPods</summary>

[CocoaPods][url-cocoapods] is a dependency manager for Cocoa projects. You can install it with the following command:

```
$ gem install cocoapods
```
</details>

### Swift Package Manager

You can use the [Swift Package Manager][url-swift-package-manager] to install `FoundationExtensions` by adding it to your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/nsagora/foundation-extensions", majorVersion: 1),
    ]
)
```

Note that the [Swift Package Manager][url-swift-package-manager] is still in early design and development, for more information checkout its [GitHub Page][url-swift-package-manager-github].

### Manually
To use this library in your project manually you may:

1. for Projects, just drag the `Sources` folder into the project tree
2. for Workspaces, include the whole `FoundationExtensions.xcodeproj`

## Usage example

## Contribute

We would love you for the contribution to **FoundationExtensions**, check the [``LICENSE``][url-license-file] file for more info.

## Meta

This project is developed and maintained by the members of [iOS NSAgora][url-twitter], the community of iOS Developers of Iași, Romania.

Distributed under the [MIT][url-license] license. See [``LICENSE``][url-license-file] for more information.

[https://github.com/nsagora/foundation-extensions]

### Credits and references

[url-foundation-extensions]: https://github.com/nsagora/foundation-extensions
[url-foundation-extensions-docs]: https://nsagora.github.io/foundation-extensions/

[url-carthage]: https://github.com/Carthage/Carthage
[url-carthage-cartfile]: https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile

[url-cocoapods]: https://cocoapods.org
[url-cocoapods-podfile]: https://guides.cocoapods.org/syntax/podfile.html

[url-swift-package-manager]: https://swift.org/package-manager
[url-swift-package-manager-github]: https://github.com/apple/swift-package-manager

[url-license]: http://choosealicense.com/licenses/mit/
[url-license-file]: https://github.com/nsagora/foundation-extensions/blob/master/LICENSE
[url-twitter]: https://twitter.com/nsagora
[url-travis]: https://travis-ci.org/nsagora/foundation-extensions
[url-codecov]: https://codecov.io/gh/nsagora/foundation-extensions
[url-homebrew]: http://brew.sh/

[badge-license]: https://img.shields.io/badge/license-MIT-blue.svg?style=flat
[badge-twitter]: https://img.shields.io/badge/twitter-%40nsgaora-blue.svg?style=flat
[badge-travis]: https://travis-ci.org/nsagora/foundation-extensions.svg?branch=develop
[badge-codecov]: https://codecov.io/gh/nsagora/foundation-extensions/branch/develop/graph/badge.svg
[badge-carthage]: https://img.shields.io/badge/carthage-compatible-4BC51D.svg?style=flat
[badge-version]: https://img.shields.io/badge/version-0.1.0-blue.svg?style=flat
[badge-docs]: https://img.shields.io/badge/docs-100%25-brightgreen.svg?style=flat