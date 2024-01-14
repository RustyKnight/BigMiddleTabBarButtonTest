![Swift](https://img.shields.io/badge/Swift-4.2-orange) ![iOS](https://img.shields.io/badge/iOS-12.1-orange)

# Big Middle Button

A test case for creating a `UITabBarController`/`UITabBar` with a "big middle button".

This is a simple test case which uses a storyboard to re-position the middle icon and a custom `UITabBar` to perform hit testing which detects when the user taps part of the image which "overflows" the bounds of the underlying tab bar.

This is a hack, and make no mistake.  I'd like a cleaner way to do this, but I needed the underlying `UIImageView` of the tab bar button in order to determine if the user tapped within in it's bounds, but there is no easy way to get it.

![](Snapshot/Snapshot.png)
