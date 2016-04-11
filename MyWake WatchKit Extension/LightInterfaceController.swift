//
//  LightInterfaceController.swift
//  MyWake
//
//  Created by Patrick Riley on 2/28/16.
//  Copyright © 2016 Patrick Riley. All rights reserved.
//

import WatchKit
import Foundation


class LightInterfaceController: WKInterfaceController {
    
    @IBOutlet var lightStartSlider: WKInterfaceSlider!
    @IBOutlet var lightEndSlider: WKInterfaceSlider!
    
    static var lightStartValue:Float = 0.0
    static var lightEndValue:Float = 0.0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        lightStartSlider.setValue(LightInterfaceController.lightStartValue)
        lightEndSlider.setValue(LightInterfaceController.lightEndValue)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func lightStartChanged(value: Float) {
        LightInterfaceController.lightStartValue = value
    }
    
    @IBAction func lightEndChanged(value: Float) {
        LightInterfaceController.lightEndValue = value
    }
}
