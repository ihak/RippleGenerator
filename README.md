# RippleGenerator
A splash loading animation with ripple effect written in Swift.

![alt tag](https://github.com/ihak/RippleGenerator/blob/master/RippleGenerator/demo.gif)

### Usage
Create an instance of HAKRippleGenerator and add it to your view:
```swift
let rippleView = HAKRippleGenerator(frame: CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.width, height: 180), duration: 0.4)
rippleView!.backgroundColor = UIColor.clear
self.view.addSubview(rippleView!)
```
Position the view using center property:
```swift
let screenCenter = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
rippleView.center = CGPoint.init(x: screenCenter.x, y: screenCenter.y/0.55)
```

Start animation:
```swift
self.rippleView.startAnimating()
```
Stop animation:
```swift
rippleView.stopAnimating()
```
