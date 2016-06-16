//
//  ChordController.swift
//  ChordHelper
//
//  Created by User on 6/16/16.
//  Copyright © 2016 Ray Wenderlich. All rights reserved.
//

import WatchKit
import Foundation


class ChordController: WKInterfaceController {

    @IBOutlet var e2Spacer: WKInterfaceGroup!
    @IBOutlet var bSpacer: WKInterfaceGroup!
    @IBOutlet var gSpacer: WKInterfaceGroup!
    @IBOutlet var dSpacer: WKInterfaceGroup!
    @IBOutlet var aSpacer: WKInterfaceGroup!
    @IBOutlet var eSpacer: WKInterfaceGroup!
    
    @IBOutlet var e2Label: WKInterfaceLabel!
    @IBOutlet var bLabel: WKInterfaceLabel!
    @IBOutlet var gLabel: WKInterfaceLabel!
    @IBOutlet var dLabel: WKInterfaceLabel!
    @IBOutlet var aLabel: WKInterfaceLabel!
    @IBOutlet var eLabel: WKInterfaceLabel!
    
    @IBOutlet var e2Circle: WKInterfaceGroup!
    @IBOutlet var bCircle: WKInterfaceGroup!
    @IBOutlet var gCircle: WKInterfaceGroup!
    @IBOutlet var dCircle: WKInterfaceLabel!
    @IBOutlet var aCircle: WKInterfaceGroup!
    @IBOutlet var eCircle: WKInterfaceGroup!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        if let chord = context as? Chord {
            setTitle(chord.name)
        }
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
