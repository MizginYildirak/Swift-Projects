//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipAmount = 0.10
    
    @IBAction func tipChanged(_ sender: UIButton) {

        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let a = buttonTitle.dropLast()
        if let doubledA = Double(a) {
            tipAmount = doubledA / 100
        }
        
        billTextField.endEditing(true)
        let textFieldValue = billTextField.text
        let an = Double(textFieldValue)
        print(an)
    }
    
  
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
 
    }
}

