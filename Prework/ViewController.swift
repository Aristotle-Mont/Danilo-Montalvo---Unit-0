//
//  ViewController.swift
//  Prework
//
//  Created by Phantom on 8/25/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get total tip by mult tip * tip%
        let tipPercentges = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentges[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

