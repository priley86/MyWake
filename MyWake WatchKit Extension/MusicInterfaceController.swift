//
//  MusicInterfaceController.swift
//  MyWake
//
//  Created by Patrick Riley on 2/28/16.
//  Copyright © 2016 Patrick Riley. All rights reserved.
//

import WatchKit
import Foundation


class MusicInterfaceController: WKInterfaceController {
    
    @IBOutlet var songPicker: WKInterfacePicker!
    
    var songList: [(String, String)] = [
        ("Led Zeppelin", "Kashmir"),
        ("Jimi Hendrix", "Hey Joe"),
        ("Stevie Ray Vaughan", "Pride and Joy"),
        ("B.B King", "Three O'Clock Blues"),
        ("Eric Clapton", "Sunshine of Your Love"),
    ];
    static var selectedIndex = 0;
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let songListItems: [WKPickerItem] = songList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        
        songPicker.setItems(songListItems)
        songPicker.setSelectedItemIndex(MusicInterfaceController.selectedIndex)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func songChanged(value: Int) {
        MusicInterfaceController.selectedIndex = value
    }
    
}