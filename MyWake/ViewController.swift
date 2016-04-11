//
//  ViewController.swift
//  MyWake
//
//  Created by Patrick Riley on 2/28/16.
//  Copyright © 2016 Patrick Riley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWakeLogoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let layer = CAGradientLayer()
        layer.frame = self.view.bounds
        
        let topColor = UIColor(red: 0/255, green: 12/255, blue: 24/255, alpha: 1)
        let bottomColor = UIColor(red: 0/255, green: 74/255, blue: 146/255, alpha: 1)
        
        layer.colors = [topColor.CGColor, bottomColor.CGColor]
        
        self.view.layer.insertSublayer(layer, atIndex: 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.myWakeLogoImageView.alpha = 0
        
        UIView.animateWithDuration(1.5, animations: {
            self.myWakeLogoImageView.alpha = 1
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

