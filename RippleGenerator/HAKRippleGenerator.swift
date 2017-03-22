//
//  HAKRippleGenerator.swift
//  Ripple
//
//  Created by Hassan Ahmed on 28/05/2015.
//  Copyright (c) 2015 CygnisMedia Inc. All rights reserved.
//

import UIKit

class HAKRippleGenerator: UIView {
    var circle1,
    circle2,
    circle3,
    circle4,
    circle5: UIView?
    var duration = 0.4
    var shouldAnimate = false
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    convenience init(frame: CGRect, duration:Double) {
        self.init(frame: frame)
        self.duration = duration
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func isAnimating() -> Bool {
        return shouldAnimate
    }
    
    func setupView() {
        
        //Circles
        let circleView5 = UIView(frame: CGRect(x:0.0, y:0.0, width:frame.height, height:frame.height))
        circleView5.backgroundColor = UIColor.white
        circleView5.layer.cornerRadius = circleView5.frame.width/2
        circleView5.center = self.center
        self.addSubview(circleView5)
        
        circle5 = UIImageView(image: UIImage(named: "ripple-5"))
        circle5?.frame = CGRect(x: 0.0, y: 0.0, width: frame.height, height: frame.height)
        circle5?.contentMode = UIViewContentMode.scaleAspectFill
        circle5?.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        circleView5.addSubview(circle5!)
        
        let circleView4 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: frame.height-24, height: frame.height-24))
        circleView4.backgroundColor = UIColor.white
        circleView4.layer.cornerRadius = circleView4.frame.width/2
        circleView4.center = self.center
        self.addSubview(circleView4)

        circle4 = UIImageView(image: UIImage(named: "ripple-4"))
        circle4?.frame = CGRect(x: 0.0, y: 0.0, width: frame.height-24, height: frame.height-24)
        circle4?.contentMode = UIViewContentMode.scaleAspectFill
        circle4?.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        circleView4.addSubview(circle4!)
        
        let circleView3 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: frame.height-50, height: frame.height-50))
        circleView3.backgroundColor = UIColor.white
        circleView3.layer.cornerRadius = circleView3.frame.width/2
        circleView3.center = self.center
        self.addSubview(circleView3)

        circle3 = UIImageView(image: UIImage(named: "ripple-3"))
        circle3?.frame = CGRect(x: 0.0, y: 0.0, width: frame.height-50, height: frame.height-50)
        circle3?.contentMode = UIViewContentMode.scaleAspectFill
        circle3?.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        circleView3.addSubview(circle3!)
        
        //Line
        let line = UIView(frame: CGRect(x: 0.0, y: 0.0, width: frame.width, height: 2.0))
        line.center = self.center
        line.backgroundColor = UIColor.red
        self.addSubview(line)

        let circleView2 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: frame.height-80, height: frame.height-80))
        circleView2.backgroundColor = UIColor.white
        circleView2.layer.cornerRadius = circleView2.frame.width/2
        circleView2.center = self.center
        self.addSubview(circleView2)

        circle2 = UIImageView(image: UIImage(named: "ripple-2"))
        circle2?.frame = CGRect(x: 0.0, y: 0.0, width: frame.height-80, height: frame.height-80)
        circle2?.contentMode = UIViewContentMode.scaleAspectFill
        circle2?.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        circleView2.addSubview(circle2!)
        
        
        let circleView1 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: frame.height-117, height: frame.height-117))
        circleView1.backgroundColor = UIColor.white
        circleView1.layer.cornerRadius = circleView1.frame.width/2
        circleView1.center = self.center
        self.addSubview(circleView1)

        circle1 = UIImageView(image: UIImage(named: "ripple-1"))
        circle1?.frame = CGRect(x: 0.0, y: 0.0, width: frame.height-117, height: frame.height-117)
        circle1?.contentMode = UIViewContentMode.scaleAspectFill
        circle1?.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        circleView1.addSubview(circle1!)
        
        
        //Loading Label
        let loadingLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        loadingLabel.textAlignment = NSTextAlignment.center
        loadingLabel.backgroundColor = UIColor.clear
        loadingLabel.center = self.center
        loadingLabel.text = "loading"
//        loadingLabel.font = Utility.getAdjustedBoldFontOfSize(13.0)
        self.addSubview(loadingLabel)
                
    }
    
    func startAnimating() {
        self.shouldAnimate = true
        self.animate()
    }
    
    func stopAnimating() {
        self.shouldAnimate = false
    }
    
    func animate() {
        UIView.animate(withDuration: duration, delay: 0.0, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.circle1!.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            }) { (completed: Bool) -> Void in
                UIView.animate(withDuration: self.duration, animations: { () -> Void in
                    self.circle1!.transform = CGAffineTransform.identity
                })
        }
        
        UIView.animate(withDuration: duration, delay: 0.1, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.circle2!.superview!.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            }) { (completed: Bool) -> Void in
                UIView.animate(withDuration: self.duration, animations: { () -> Void in
                    self.circle2!.superview!.transform = CGAffineTransform.identity
                })
        }
        
        UIView.animate(withDuration: duration, delay: 0.2, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.circle3!.superview!.transform = CGAffineTransform(scaleX: 1.09, y: 1.09)
            }) { (completed: Bool) -> Void in
                UIView.animate(withDuration: self.duration, animations: { () -> Void in
                    self.circle3!.superview!.transform = CGAffineTransform.identity
                })
        }
        
        UIView.animate(withDuration: duration, delay: 0.3, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.circle4!.superview!.transform = CGAffineTransform(scaleX: 1.09, y: 1.09)
            }) { (completed: Bool) -> Void in
                UIView.animate(withDuration: self.duration, animations: { () -> Void in
                    self.circle4!.superview!.transform = CGAffineTransform.identity
                })
        }
        
        UIView.animate(withDuration: duration, delay: 0.4, options: UIViewAnimationOptions(), animations: { () -> Void in
            self.circle5!.superview!.transform = CGAffineTransform(scaleX: 1.09, y: 1.09)
            }) { (completed: Bool) -> Void in
                UIView.animate(withDuration: self.duration, animations: { () -> Void in
                    self.circle5!.superview!.transform = CGAffineTransform.identity
                })
                
                UIView.animate(withDuration: self.duration, animations: { () -> Void in
                    self.circle5!.superview!.transform = CGAffineTransform.identity
                    }, completion: { (completed: Bool) -> Void in
                        if self.shouldAnimate {
							Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(HAKRippleGenerator.animate as (HAKRippleGenerator) -> () -> ()), userInfo: nil, repeats: false)
                        }
                })
        }
    }
}
