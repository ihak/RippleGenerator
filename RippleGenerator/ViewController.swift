//
//  ViewController.swift
//  RippleGenerator
//
//  Created by Hassan Ahmed Khan on 3/22/17.
//  Copyright © 2017 Hassan Ahmed Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var rippleView : HAKRippleGenerator!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addRippleGenerator()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addRippleGenerator() {
        //Ripple Generator
        
        rippleView = HAKRippleGenerator(frame: CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.width, height: 180), duration: 0.4)
        rippleView!.backgroundColor = UIColor.clear
        self.view.addSubview(rippleView!)
        
        let screenCenter = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
        rippleView!.center = CGPoint.init(x: screenCenter.x, y: screenCenter.y/0.55)
        rippleView!.startAnimating()
    }
    
    func stopRippleGenerator() {
        if (self.rippleView!.isAnimating()) {
            self.rippleView?.stopAnimating()
        }
        else {
            self.rippleView?.startAnimating()
        }
    }

}

