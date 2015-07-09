# JXGradientNavigationBar

Custom UINavigationBar subclass with gradient colors on iOS.

[![Version](https://img.shields.io/cocoapods/v/JXGradientNavigationBar.svg?style=flat)](http://cocoapods.org/pods/JXGradientNavigationBar)
[![License](https://img.shields.io/cocoapods/l/JXGradientNavigationBar.svg?style=flat)](http://cocoapods.org/pods/JXGradientNavigationBar)
[![Platform](https://img.shields.io/cocoapods/p/JXGradientNavigationBar.svg?style=flat)](http://cocoapods.org/pods/JXGradientNavigationBar)

## Requirements

- iOS SDK 7.0 or later
- [CocoaPods](http://cocoapods.org)

## Installation

Add the following line to your Podfile:

```ruby
pod "JXGradientNavigationBar"
```

## Usage

1. Import the header file:

  ```objective-c
  #import "JXGradientNavigationBar.h"
  ```

2. Set the gradient colors using UIAppearance `barTintGradientColors` property:

  ```objective-c
  [JXGradientNavigationBar appearance].barTintGradientColors = @[[UIColor greenColor], [UIColor yellowColor]];
  ```

3. Customize your navigation controller:

  ```objective-c
  UINavigationController * navigationController = [[UINavigationController alloc] initWithNavigationBarClass:[JXGradientNavigationBar class] toolbarClass:nil];
  ```

## Example

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

  [JXGradientNavigationBar appearance].barTintGradientColors = @[[UIColor greenColor], [UIColor yellowColor]];
  [JXGradientNavigationBar appearance].shadowImage = [[UIImage alloc] init];
  [JXGradientNavigationBar appearance].tintColor = [UIColor whiteColor];
  [JXGradientNavigationBar appearance].titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};

  UINavigationController * navigationController = [[UINavigationController alloc] initWithNavigationBarClass:[JXGradientNavigationBar class] toolbarClass:nil];
  navigationController.navigationBar.translucent = YES;
  navigationController.viewControllers = @[[[UIViewController alloc] init]];

  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [self.window setRootViewController:navigationController];
  [self.window makeKeyAndVisible];

  return YES;
}
```

## License

Copyright © 2015 Jianqiu Xiao <swordray@gmail.com> under The [MIT License](http://opensource.org/licenses/MIT).
