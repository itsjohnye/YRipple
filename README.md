
# YRipple
[![Swift Version](https://img.shields.io/badge/Swift_Version-4.2-orange.svg)](https://docs.swift.org/swift-book)
[![Releases](https://img.shields.io/badge/Releases-1.0.0-green.svg)](https://github.com/itsjohnye/YRipple/releases)
[![Cocoapods](https://img.shields.io/badge/Cocoapods-compatible-brightgreen.svg)](https://cocoapods.org)
[![GitHub license](https://img.shields.io/badge/Lisence-MIT-blue.svg)](LICENSE.md)

![](https://github.com/itsjohnye/YRipple/blob/master/YRipple_Logo.png)
YRipple is a framework inherit the legacy from [PIRipple](https://github.com/pixel-ink/PIRipple).

Now it has been updated to Xcode 10 and Swift 4.2.


## Demo
![](https://github.com/itsjohnye/YRipple/blob/master/Demo.gif)
For more details see [Demo](https://github.com/itsjohnye/YRipple/tree/master/YRippleDemo) project.

## Table of Contents
- [Installation](#Installation)
- [Useage](#Useage)
    - [UIView-extention](#UIView-extention)
    - [Class-method](#Class-method)
    - [Customizing](#Customizing)
- [License](#License)


## Installation
### Manually:
Simply drop `YRipple.swift` from "Source" folder into your project (make sure to enable "Copy items if needed" and "Create groups").
### Cocoapods:
to the Podfile:

>"pod YRipple", "~>1.0.0"

then:
>$ pod install

in your project:
```
import YRipple
```


## Useage
#### UIView-extention
```
UIView.rippleBorder(location: yourLocation, color: UIColor)
```
```
UIView.rippleFill(location: yourLocation, color: UIColor)
```
##### for example
```
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       super.touchesBegan(touches, with: event)
       for touch: AnyObject in touches {
           let t: UITouch = touch as! UITouch
           let location = t.location(in: self)

           //RIPPLE BORDER
           rippleBorder(location:location, color: UIColor.white)       
       }
```
run your code after animation
```
rippleBorder(location:location, color: UIColor.white){
  print("animation completed")
  // add your code here
}
```

#### Class-method
```
YRipple.border(view:UIView, locationInView or absolutePosition:CGPoint, color:UIColor)
```
```
YRipple.fill(view:UIView, locationInView or absolutePosition:CGPoint, color:UIColor)
```
notably:
- locationInView: `CGPoint.Zero` is top & left in UIView.
- absolutePosition: `CGPoint.Zero` is top & left in UIWindow.

##### for example
```
YRipple.border(view:self.view, locationInView:CGPoint.Zero, color:UIColor.white)
```
run your code after animation
```
YRipple.border(view:tagetView, locationInView:CGPoint.Zero, color:UIColor.white) {
  print("animation completed")
  //add your code here
}
```
#### Customizing
##### example properties
```
var option = YRipple.Option()       //mind the capital form

//configuration
option.borderWidth = CGFloat(5.0)
option.radius = CGFloat(30.0)
option.duration = CFTimeInterval(0.4)
option.borderColor = UIColor.white
option.fillColor = UIColor.clear
option.scale = CGFloat(3.0)

YRipple.run(view:self.view, locationInView: CGPoint.Zero, option: option){
  print("animation completed")
  //add your code here
}

//cancel animation
UIView.rippleStop()
YRipple.stop(self.view)
```

## License
YRipple is published under the [MIT](https://github.com/itsjohnye/YRipple/blob/master/LICENSE) license.
Copyright (c) 2018 itsjohnye.
