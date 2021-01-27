//
//  ViewController.swift
//  CodePathPrework
//
//  Created by Misael Guijarro on 1/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextFIeld: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from the text field input
        let bill = Double(billAmountTextFIeld.text!) ?? 0
        
        //Get Total tip by multiplying tip by * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total amount label
        totalLabel.text = String(format: "$%.2f", total);
    }
    
}

