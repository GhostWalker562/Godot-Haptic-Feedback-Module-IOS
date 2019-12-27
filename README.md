Godot Haptic Feedback module - iOS
==========

Today, many apps are following a haptic feedback craze, so why not get your hands on the ability to do so? I'm providing a haptic feedback module for Godot, only for iOS.

For more information of feedback, https://developer.apple.com/documentation/uikit/uifeedbackgenerator

- [Godot Game Engine](https://godotengine.org/)

Hello! Thanks for checking out this module, I spent quite a time learning how to make the module so if you would like to lend a few bucks to a young programmer, I'd greatly appreciate it :D

[Click me to Donate!](https://www.paypal.me/Moonsdontburn)

How to use
----------

- Download the zip file
- Place the "haptic" directory into your "module" directory in the Godot engine.
- [Export](https://docs.godotengine.org/en/3.1/getting_started/workflow/export/exporting_projects.html) your iOS project normally by using the template provided by Godot themselves.
- Put the template provided into the iOS export and rename it to replace the previous .a file.
![Export Screenshot](/Example.png "Example Screenshot")
- haptic haptic haptic!

API Refrence (iOS)
----------
The following methods are available:
```
# Creates an instance of haptic
Haptic.new()

# Makes the device trigger a selection feedback
selection()

# Makes the device trigger a impact feedback
# @param int feedback_style declares the style of feedback, 0 - light, 1 - medium, 2 - heavy
impact(feedback_style)
```
Example in GD:
```
# Creates an instance of Haptic
var hap = Haptic.new()
hap.selection()
```
Why not Android?
-----------

I currently do not know how to code for Android devices.

Donate - Thank you!
-----------
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/Moonsdontburn)

