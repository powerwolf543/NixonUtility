# NixonUtility

This project have contained utility functions that Nixon used commonly.

## Installation

### CocoaPods

To integrate NixonUtility into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!

target '<Your Target Name>' do
    pod 'NixonUtility', :git => 'https://github.com/powerwolf543/NixonUtility.git'
end
```

Then, run the following command:

```bash
$ pod install
```
## Update

### CocoaPods Clean update

```ruby
#!/bin/sh
rm Podfile.lock
pod cache clean --all
pod deintegrate
pod install
pod update
```

## Usage

### Import module

```swift
import NixonUtility
```

## Requirements

- iOS 10+
- Xcode 9+
- Swift 4+

## Version

- v 0.0.4

## License

NixonUtility is released under the MIT license.
