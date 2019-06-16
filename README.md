![](https://github.com/alialnaghmoush/UIKitX/blob/master/Design/LogoX.png)

Welcome to **UIKitX**, a UI/UX framework easy & powerful for human use to create beautiful applications.

[![Language: Swift 2, 3, 4 and 5](https://img.shields.io/badge/Language-Swift%205-orange.svg?style=flat)]()
[![Platform](https://img.shields.io/badge/Platform-iOS%20-blue.svg?style=flat)]()
[![Release](https://img.shields.io/badge/Release-v0.1.7%20Beta-green.svg?style=flat)]()
[![License](https://img.shields.io/badge/%20License-MIT-green.svg?style=flat)]()

<div align="center">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy.png" height="120">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Color.png" height="120">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Gradient.png" height="120">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Alert.png" height="120">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Anchor.png" height="120">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Animat.png" height="120">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Shapes.png" height="120">
</div>

## Features

- [X] Clean Swift 5 Code.
- [X] Shortest possible syntax for all features.
- [X] Easy UIView syntax call.
- [X] Easy make or select shadows.
- [X] Easy make or select Parallax.
- [X] Convenience call color.
- [X] Convenience call HexColor.
- [X] Extension Material Design Color.
- [X] Easy make or select Gradient.
- [X] Easy make Modern alerts system.
- [X] Easy syntax & make layout constraints.
- [X] Easy syntax & make animation.
- [X] And more in the future.

## Installation

#### UIKitX is available through [CocoaPods](https://cocoapods.org/pods/UIKitX). To install it, simply add the following line to your Podfile:
```ruby
pod 'UIKitX', '~> 0.1.6'
```

## Usage
#### Import `UIKitX` module
```swift
import UIKitX
```
## Easy
<div align="center">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/1border.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/2borderWidth.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/3borderColor.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/4cornerEdges.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/5maskedCorners.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/6maskView.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/7clipView.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/8backColor.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design//Easy/9addSubviews.png" width="200">
</div>

### Easy: `border` syntax
```swift
border(width: CGFloat, color: UIColor)
```
```swift
border(width: CGFloat, color: UIColor, views: UIView...)
```
### Examples Usage `border`
```swift
let x = UIView()
x.border(width: 5, color: .white)
```

```swift
let x1 = UIView()
let x2 = UIView()
let x3 = UIView()

x1.border(width: 5, color: .white, views: x2,x3)
```

### Easy: `borderWidth` syntax
```swift
borderWidth(_ set: CGFloat)
```
```swift
borderWidth(_ set: CGFloat, views: UIView...)
```
### Examples Usage `borderWidth`
```swift
let x = UIView()
x.borderWidth(5)
```

```swift
let x1 = UIView()
let x2 = UIView()
let x3 = UIView()

x1.borderWidth(5, views: x2,x3)
```

### Easy: `borderColor` syntax
```swift
borderColor(_ set: UIColor)
```
```swift
borderColor(_ set: UIColor, views: UIView...)
```
### Examples Usage `borderColor`
```swift
let x = UIView()
x.borderColor(.purple)
```

```swift
let x1 = UIView()
let x2 = UIView()
let x3 = UIView()

x1.borderColor(.white, views: x2,x3)
```

### Easy: `cornerEdges` syntax
```swift
cornerEdges(_ set: CGFloat)
```
```swift
cornerEdges(_ active: Bool = true)
```
```swift
cornerEdges(_ set: CGFloat, views: UIView...)
```
```swift
cornerEdges(_ active: Bool = true, views: UIView...)
```

### Examples Usage `cornerEdges`
```swift
let x = UIView()
x.cornerEdges(13)
```
```swift
let x = UIView()
x.cornerEdges(true)
```
```swift
let x1 = UIView()
let x2 = UIView()
let x3 = UIView()

x1.cornerEdges(8, views: x2,x3)
```
```swift
let x1 = UIView()
let x2 = UIView()
let x3 = UIView()

x1.cornerEdges(true, views: x2,x3)
```

### Easy: `maskedCorners` syntax
```swift
maskedCorners(_ set: CACornerMask)
```
```swift
maskedCorners(_ set: CACornerMask, views: UIView...)
```
### Select one or more
`.top` | `.left` | `.right` | `.bottom` | `.topRight` | `.topLeft` | `.bottomRight` | `.bottomLeft`
### Examples Usage `maskedCorners`
```swift
let x = UIView()
x.cornerEdges(10).maskedCorners(.top)
```
```swift
let x = UIView()
x.cornerEdges(20).maskedCorners([.topLeft,.bottomRight])
```
```swift
let x1 = UIView()
let x2 = UIView()
let x3 = UIView()

x1.maskedCorners([.topLeft,.bottomRight], views: x2,x3)
```

### Easy: `maskView` syntax
```swift
maskView(_ active: Bool) // As default is true
```
```swift
maskView(_ active: Bool = true, views: UIView...) // As default is true
```
### Examples Usage `maskView`
```swift
let x = UIView()
x.maskView()
```
```swift
let x = UIView()
x.maskView(true, views: x2,x3)
```

### Easy: `clipView` syntax
```swift
clipView(_ active: Bool) // As default is true
```
```swift
clipView(_ active: Bool = true, views: UIView...) // As default is true
```
### Examples Usage `clipView`
```swift
let x = UIView()
x.clipView()
```
```swift
let x = UIView()
x.clipView(false, views: x2,x3)
```

### Easy: `backColor` syntax
```swift
backColor(_ set: UIColor)
```
```swift
backColor(_ set: UIColor, views: UIView...)
```
### Examples Usage `backColor`
```swift
let x = UIView()
x.backColor(.white)
```
```swift
let x1 = UIView()
let x2 = UIView()
let x3 = UIView()

x1.backColor(.purple, views: x2,x3)
```

### Easy: `addSubviews` syntax
```swift
addSubviews(_ views: UIView...)
```
### Examples Usage `addSubviews`
```swift
let x1 = UIView()
let x2 = UIView()
let x3 = UIView()

view.addSubviews(1x,x2,x3)
```
