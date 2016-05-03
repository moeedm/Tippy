//
//  ViewController.swift
//  Tippy
//
//  Created by Moeed Mohammad on 5/2/16.
//  Copyright © 2016 Moeed Mohammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercent: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dismissKeyboard(sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipPercent.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

}

