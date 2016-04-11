//
//  AlarmInterfaceController.swift
//  MyWake
//
//  Created by Patrick Riley on 2/28/16.
//  Copyright © 2016 Patrick Riley. All rights reserved.
//


import WatchKit
import Foundation


class AlarmInterfaceController: WKInterfaceController {
    
    //WKInterfacePicker outlets
    @IBOutlet var alarmStartHour: WKInterfacePicker!
    @IBOutlet var alarmStartMinute: WKInterfacePicker!
    @IBOutlet var alarmStartAmPm: WKInterfacePicker!
    @IBOutlet var alarmEndHour: WKInterfacePicker!
    @IBOutlet var alarmEndMinute: WKInterfacePicker!
    @IBOutlet var alarmEndAmPm: WKInterfacePicker!
    
    //pickerLists
    var hoursList = [(String, String)]()
    var minutesList = [(String, String)]()
    var amPmList: [(String, String)] =
        [(" ", "AM"),(" ", "PM")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        for i in 1...12 {
            if(i<10){
                hoursList.append((" ","0\(i)"))
            } else {
                hoursList.append((" ","\(i)"))
            }
        }
        
        for i in 1...60 {
            if(i<10){
                minutesList.append((" ","0\(i)"))
            } else {
                minutesList.append((" ","\(i)"))
            }
        }
        
        let hourItems: [WKPickerItem] = hoursList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        
        let minuteItems: [WKPickerItem] = minutesList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        
        let amPmItems: [WKPickerItem] = amPmList.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
        }
        
        alarmStartHour.setItems(hourItems)
        alarmEndHour.setItems(hourItems)
        alarmStartMinute.setItems(minuteItems)
        alarmEndMinute.setItems(minuteItems)
        alarmStartAmPm.setItems(amPmItems)
        alarmEndAmPm.setItems(amPmItems)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //WKInterfacePicker actions
    @IBAction func startHourChanged(value: Int) {
    }
    @IBAction func startMinuteChanged(value: Int) {
    }
    @IBAction func startAmPmChanged(value: Int) {
    }
    @IBAction func endHourChanged(value: Int) {
    }
    @IBAction func endMinuteChanged(value: Int) {
    }
    @IBAction func endAmPmChanged(value: Int) {
    }
}
