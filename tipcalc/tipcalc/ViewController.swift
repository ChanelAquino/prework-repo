//
//  ViewController.swift
//  tipcalc
//
//  Created by Chanel Aquino on 1/24/18.
//  Copyright © 2018 Chanel Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var twoPersonLabel: UILabel!
    @IBOutlet weak var threePersonLabel: UILabel!
    @IBOutlet weak var fourPersonLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // colors
        let whiteBlue =
            UIColor(red:0.71, green:0.82, blue:0.93, alpha:1.0)
        let pastelBlue = UIColor(red:0.51, green:0.64, blue:0.80, alpha:1.0)
        let steelBlue = UIColor(red:0.24, green:0.49, blue:0.69, alpha:1.0)
        let electricBlue = UIColor(red:0.02, green:0.29, blue:0.57, alpha:1.0)
        let orange = UIColor(red:0.95, green:0.45, blue:0.00, alpha:1.0)
        
        // set colors of components
        billField.textColor = electricBlue
        tipControl.tintColor = orange
        totalLabel.textColor = electricBlue
        twoPersonLabel.textColor = steelBlue
        threePersonLabel.textColor = pastelBlue
        fourPersonLabel.textColor = whiteBlue

    }   // end viewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // handle when user taps anywhere on screen
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)   // dismiss keyboard
    }   // end onTap
    
    // handle when user changes contents of tbill field
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25] // array of tip % in segmented controller
        let bill = Double(billField.text!) ?? 0 // value inside text field
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]    // calculate tip
        let total = bill + tip  // calculate total
        
        // user has not entered bill amount
        if billField.text == "" {
            tipLabel.text = ""
            totalLabel.text = ""
            twoPersonLabel.text = ""
            threePersonLabel.text = ""
            fourPersonLabel.text = ""
        } else {
            
            // user entered more than 2 digits
            if billField.text!.count > 2 {
                
                // remove current decimal point
                billField.text! = billField.text!.replacingOccurrences(of: ".", with: "")
                
                // auto-insert decimal point
                billField.text!.insert(".", at: billField.text!.index(billField.text!.endIndex, offsetBy: -2))
            }
            
            // set text for labels
            tipLabel.text = String(format: "%.2f", tip)
            totalLabel.text = String(format: "%.2f", total)
            twoPersonLabel.text = String(format: "%.2f", total / 2)
            threePersonLabel.text = String(format: "%.2f", total / 3)
            fourPersonLabel.text = String(format: "%.2f", total / 4)
        }
    } // end calculateTip
}

