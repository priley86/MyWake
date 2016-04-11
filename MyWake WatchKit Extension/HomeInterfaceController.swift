//
//  HomeInterfaceController.swift
//  MyWake WatchKit Extension
//
//  Created by Patrick Riley on 2/28/16.
//  Copyright © 2016 Patrick Riley. All rights reserved.
//

import WatchKit
import Foundation


class HomeInterfaceController: WKInterfaceController {

    @IBOutlet var lightBtn: WKInterfaceButton!
    @IBOutlet var colorBtn: WKInterfaceButton!
    @IBOutlet var alarmBtn: WKInterfaceButton!
    @IBOutlet var musicBtn: WKInterfaceButton!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
