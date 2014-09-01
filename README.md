# UIAlertView-NSErrorAddition

[![CI Status](http://img.shields.io/travis/azu/UIAlertView-NSErrorAddition.svg?style=flat)](https://travis-ci.org/azu/UIAlertView-NSErrorAddition)
[![Version](https://img.shields.io/cocoapods/v/UIAlertView-NSErrorAddition.svg?style=flat)](http://cocoadocs.org/docsets/UIAlertView-NSErrorAddition)
[![License](https://img.shields.io/cocoapods/l/UIAlertView-NSErrorAddition.svg?style=flat)](http://cocoadocs.org/docsets/UIAlertView-NSErrorAddition)
[![Platform](https://img.shields.io/cocoapods/p/UIAlertView-NSErrorAddition.svg?style=flat)](http://cocoadocs.org/docsets/UIAlertView-NSErrorAddition)

UIAlertView + NSError category library.

![img](http://monosnap.com/image/wJypNE3I2daqBECDae1T8T0tOvcbip.png)

## Installation

UIAlertView-NSErrorAddition is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "UIAlertView-NSErrorAddition"

## Usage

You can try it:

```
pod try UIAlertView-NSErrorAddition
```

Basic use case.


```objc
NSDictionary *userInfo = @{
    NSLocalizedDescriptionKey : @"Network Error",
    NSLocalizedFailureReasonErrorKey : @"Doesn't connect to network",
    NSLocalizedRecoverySuggestionErrorKey : @"Reload page after check the network.",
    NSLocalizedRecoveryOptionsErrorKey : @[@"OK"]
};

NSError *error = [NSError errorWithDomain:[[NSBundle bundleForClass:[self class]] bundleIdentifier] code:0 userInfo:userInfo];
UIAlertView *alertView = [[UIAlertView alloc] initWithError:error];
[alertView show];
```

Each key mapping to UIAlertView parts.

![img](http://monosnap.com/image/wJypNE3I2daqBECDae1T8T0tOvcbip.png)


## More Detail

- [iPhoneアプリの通信エラー処理を考える - iOS Advent Calendar 2011 - ninjinkun&#39;s diary](http://ninjinkun.hatenablog.com/entry/2011/12/23/224918 "iPhoneアプリの通信エラー処理を考える - iOS Advent Calendar 2011 - ninjinkun&#39;s diary")

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT

