//
//  ViewController.swift
//  ProgramaticActivityIndicatorTest
//
//  Created by Peter Johnson on 4/23/15.
//  Copyright (c) 2015 Peter Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var indicator = UIActivityOverlay()
    
    @IBAction func toggle() {
        if indicator.isActive {
            indicator.stopActivity()
            indicator.removeFromSuperview()
            println("Stopping")
        } else {
            indicator.startActivity()
            self.view.addSubview(indicator)
            println("Starting")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

