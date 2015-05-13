//
//  UIActivityOverlay.swift
//  ProgramaticActivityIndicatorTest
//
//  Created by Peter Johnson on 5/13/15.
//  Copyright (c) 2015 Peter Johnson. All rights reserved.
//

import Foundation
import UIKit

class UIActivityOverlay : UIView {
    private var blur = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffectStyle.Dark))
    private var spinner = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
    var isActive: Bool = false
    
    override init (frame : CGRect) {
        super.init(frame : frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func startActivity() {
        let x = UIScreen.mainScreen().bounds.width/2
        let y = UIScreen.mainScreen().bounds.height/2
        
        blur.frame = CGRectMake(100, 100, 150, 150)
        blur.layer.cornerRadius = 10
        blur.center = CGPoint(x: x, y: y)
        blur.clipsToBounds = true
        
        spinner.frame = CGRectMake(0, 0, 50, 50)
        spinner.hidden = false
        spinner.center = CGPoint(x: x, y: y)
        spinner.startAnimating()
        
        super.addSubview(blur)
        super.addSubview(spinner)
        isActive = true
    }
    
    func stopActivity() {
        blur.removeFromSuperview()
        spinner.removeFromSuperview()
        isActive = false
    }
}