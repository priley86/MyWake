//
//  ColorInterfaceController.swift
//  MyWake
//
//  Created by Patrick Riley on 2/28/16.
//  Copyright © 2016 Patrick Riley. All rights reserved.
//


import WatchKit
import Foundation


class ColorInterfaceController: WKInterfaceController {

    //start button outlets
    @IBOutlet var yellowBtnStart: WKInterfaceButton!
    @IBOutlet var orangeBtnStart: WKInterfaceButton!
    @IBOutlet var pinkBtnStart: WKInterfaceButton!
    @IBOutlet var tealBtnStart: WKInterfaceButton!
    
    //start button image outlets
    @IBOutlet var yellowStartImage: WKInterfaceImage!
    @IBOutlet var orangeStartImage: WKInterfaceImage!
    @IBOutlet var pinkStartImage: WKInterfaceImage!
    @IBOutlet var tealStartImage: WKInterfaceImage!
    
    //end button outlets
    @IBOutlet var tealBtnEnd: WKInterfaceButton!
    @IBOutlet var pinkBtnEnd: WKInterfaceButton!
    @IBOutlet var orangeBtnEnd: WKInterfaceButton!
    @IBOutlet var yellowBtnEnd: WKInterfaceButton!
    
    //end button image outlets
    @IBOutlet var tealEndImage: WKInterfaceImage!
    @IBOutlet var pinkEndImage: WKInterfaceImage!
    @IBOutlet var orangeEndImage: WKInterfaceImage!
    @IBOutlet var yellowEndImage: WKInterfaceImage!
    
    //current selected
    static var selectedStart:Int16! = nil
    static var selectedEnd:Int16! = nil
    
    //bulb image
    let bulbImage = UIImage(named: "bulb")
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        setStartImage()
        setEndImage()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //start button presses
    @IBAction func tealStartPress() {
        ColorInterfaceController.selectedStart = 1
        setStartImage()
    }
    
    @IBAction func yellowStartPress() {
        ColorInterfaceController.selectedStart = 2
        setStartImage()
    }
    
    @IBAction func orangeStartPress() {
        ColorInterfaceController.selectedStart = 3
        setStartImage()
    }
    
    @IBAction func pinkStartPress() {
        ColorInterfaceController.selectedStart = 4
        setStartImage()
    }
    
    func setStartImage(){
        if let selected = ColorInterfaceController.selectedStart {
            selected == 1 ?
                tealStartImage.setImage(bulbImage) : tealStartImage.setImage(nil)
            selected == 2 ?
                yellowStartImage.setImage(bulbImage) : yellowStartImage.setImage(nil)
            selected == 3 ?
                orangeStartImage.setImage(bulbImage) : orangeStartImage.setImage(nil)
            selected == 4 ?
                pinkStartImage.setImage(bulbImage) : pinkStartImage.setImage(nil)
        }
    }
    
    //end button presses
    @IBAction func tealEndPress() {
        ColorInterfaceController.selectedEnd = 1
        setEndImage()
    }
    
    @IBAction func pinkEndPress() {
        ColorInterfaceController.selectedEnd = 2
        setEndImage()
    }
    
    @IBAction func orangeEndPress() {
        ColorInterfaceController.selectedEnd = 3
        setEndImage()
    }

    @IBAction func yellowEndPress() {
        ColorInterfaceController.selectedEnd = 4
        setEndImage()
    }
    
    func setEndImage(){
        if let selected = ColorInterfaceController.selectedEnd {
            selected == 1 ?
                tealEndImage.setImage(bulbImage) : tealEndImage.setImage(nil)
            selected == 2 ?
                pinkEndImage.setImage(bulbImage) : pinkEndImage.setImage(nil)
            selected == 3 ?
                orangeEndImage.setImage(bulbImage) : orangeEndImage.setImage(nil)
            selected == 4 ?
                yellowEndImage.setImage(bulbImage) : yellowEndImage.setImage(nil)
        }
    }
}