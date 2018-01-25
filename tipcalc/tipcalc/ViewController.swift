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
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // handle when user taps anywhere on screen
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)   // dismiss keyboard
    }
    
    // calculate tip amount on bill text view changed
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25] // array of tip %
        let bill = Double(billField.text!) ?? 0 // constant variable for bill amount
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

