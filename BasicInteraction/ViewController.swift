//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Yosemite on 1/2/15.
//  Copyright (c) 2015 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var simpleTextField: UITextField!
    
    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBAction func ButtonPressed(sender: UIButton) {
        simpleLabel.text = "Hello, " + simpleTextField.text + "!"
        
        // +-- Keyboard dismissed when button pressed     --+
        // +   - Achieved by resignning as FirstResponder   +
        // +------------------------------------------------+
        self.simpleTextField.resignFirstResponder()
    }
    
    // +-- Keyboard dismissed when touches elsewhere in the screen --+
    // +    - Combine "touchesBegan" with "voew.endEditing"          +
    // +-------------------------------------------------------------+
    // Tells the receiver when one or more fingers touch down in a view or window
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        // Causes the view (or one of its embedded text fields) to resign the first responder status.
        self.view.endEditing(true)
    }
    
    // +--  Keyboard dismissed when keyboard return key is pressed                               --+
    // +    1. Manually drag textField delegate to VC: make VC as its delegate                     +
    // +    2. Add "UITextFieldDelegate" protocal to VC class                                      +
    // +    3. Call "textFieldShouldReturn" to resign corresponding textField as FirstResponder    +
    // +-------------------------------------------------------------------------------------------+
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return false
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

