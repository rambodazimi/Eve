//
//  InterfaceController.swift
//  EveWatch WatchKit Extension
//
//  Created by Rambod Azimi on 7/4/22.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var logoImage: WKInterfaceImage!
    @IBOutlet weak var labellogo: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        labellogo.setText("Eve!")
        logoImage.setImage(UIImage.add)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
