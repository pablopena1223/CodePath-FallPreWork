//
//  ViewController.swift
//  FallPreWork
//
//  Created by Pablo  Pena on 7/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from textfield input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get totalTip by mul tip * tipPercentage
        let tipPrecentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPrecentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount label
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
}

