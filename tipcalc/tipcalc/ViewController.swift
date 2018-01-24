//
//  ViewController.swift
//  tipcalc
//
//  Created by Chanel Aquino on 1/24/18.
//  Copyright © 2018 Chanel Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
}

