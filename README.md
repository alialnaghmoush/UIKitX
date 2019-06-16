![](https://github.com/alialnaghmoush/UIKitX/blob/master/Design/HeaderX.png)

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
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/1border.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/2borderWidth.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/3borderColor.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/4cornerEdges.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/5maskedCorners.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/6maskView.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/7clipView.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/8backColor.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/9addSubviews.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/10Parallax.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Easy/11Shadow.png" width="200">
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
cornerEdges(_ active: Bool) // Active as default is true
```
```swift
cornerEdges(_ set: CGFloat, views: UIView...)
```
```swift
cornerEdges(_ active: Bool, views: UIView...) // Active as default is true
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
maskView(_ active: Bool) // Active as default is true
```
```swift
maskView(_ active: Bool = true, views: UIView...) // Active as default is true
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
clipView(_ active: Bool) // Active as default is true
```
```swift
clipView(_ active: Bool, views: UIView...) // Active as default is true
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

view.addSubviews(x1,x2,x3)
```

### Easy: `parallax` syntax
```swift
parallax(_ set: CGFloat)
```
```swift
parallax(min: CGFloat, max: CGFloat)
```
```swift
parallax(_ strength: ParallaxStrength)
```
### Select Strength
`.ExtraLow` | `.Low` | `.Mid` | `.High` | `.ExtraHigh`

### Examples Usage `parallax`
```swift
let x = UIView()
x.parallax()
```
```swift
let x = UIView()
x.parallax(15)
```
```swift
let x = UIView()
x.parallax(min: -20, max: 35)
```
```swift
let x = UIView()
x.parallax(.High)
```

### Easy: `shadow` syntax
```swift
shadow()
```
```swift
shadow(_ color: UIColor, // As default is .black
       _ opacity: Float, // As default is 0.10
       _ blur: CGFloat,  // As default is 10.0
       _ x: CGFloat,     // As default is 0.0
       _ y: CGFloat)     // As default is 8.0
```
```swift
shadow(_ elevation: Elevation)
```
```swift
shadow(_ elevation: Elevation, color: UIColor)
```
### Select Elevation
`.none`</br>
`.top1` | `.top2` | `.top3` | `.top4` | `.top5`</br>
`.down1` | `.down2` | `.down3` | `.down4` | `.down5`</br>
`.left1` | `.left2` | `.left3` | `.left4` | `.left5`</br>
`.right1` | `.right2` | `.right3` | `.right4` | `.right5`

### Examples Usage `shadow`
```swift
let x = UIView()
x.shadow()
```
```swift
let x = UIView()
x.shadow(.black, 0.10, 10.0, 0.0, 8.0)
```
```swift
let x = UIView()
x.shadow(.down4)
```
```swift
let x = UIView()
x.shadow(.down4, color: .purple)
```
## Color
<div align="center">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Color/1convenience.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Color/2hexColor.png" width="200">
<img src="https://github.com/alialnaghmoush/UIKitX/blob/master/Design/Color/3materialColor.png" width="200">
</div>

### Color: `convenience UIColor` syntax
```swift
UIColor(r: CGFloat, g: CGFloat, b: CGFloat)
```
```swift
UIColor(r: CGFloat, g: CGFloat, b: CGFloat,_ opacity: CGFloat)
```
```swift
UIColor(red: CGFloat, green: CGFloat, blue: CGFloat)
```
```swift
UIColor(red: CGFloat, green: CGFloat, blue: CGFloat,_ opacity: CGFloat)
```
### Examples Usage `convenience UIColor`
```swift
let x = UIView()
let c = UIColor(r: 218, g: 68, b: 83)

x.backColor(c)
```
```swift
let x = UIView()
let c = UIColor(r: 218, g: 68, b: 83, 0.5)

x.backColor(c)
```
```swift
let x = UIView()
let c = UIColor(red: 102, green: 230, blue: 255)

x.backColor(c)
```
```swift
let x = UIView()
let c = UIColor(red: 102, green: 230, blue: 255, 0.8)

x.backColor(c)
```
