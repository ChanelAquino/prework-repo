//
//  ViewController.swift
//  tipcalc
//
//  Created by Chanel Aquino on 1/24/18.
//  Copyright © 2018 Chanel Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // handles when user taps on main view
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true) // dismiss keyboard
    }
    
    // calculate tip amount on bill text view changed
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0 // constant variable for bill amount
        let tip = bill * 0.2
        let total = bill + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
    }
}

