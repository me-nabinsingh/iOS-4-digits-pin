//
//  ViewController.swift
//  PinCode
//
//  Created by Nabin Singh on 30/10/2015.
//  Copyright © 2015 Nabin Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var digit1TextField: UITextField!
    @IBOutlet weak var digit2TextField: UITextField!
    @IBOutlet weak var digit3TextField: UITextField!
    @IBOutlet weak var digit4TextField: UITextField!
    
    @IBOutlet weak var codeTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        codeTextField.delegate = self
        codeTextField.hidden = true
        codeTextField.becomeFirstResponder()
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let code = textField.text! + string
        
        switch code.characters.count{
            case 1:
                digit1TextField.text = string
            case 2:
                digit2TextField.text = string
            case 3:
                digit3TextField.text = string
            case 4:
                digit4TextField.text = string
                //submit your code here
            default: break
        }
        return textField.text!.characters.count + (string.characters.count - range.length) <= 4;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

