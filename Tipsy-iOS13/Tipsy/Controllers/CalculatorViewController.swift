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
    
    var tipPercentage = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var resultTo2decimal: String?
    
    @IBAction func tipChanged(_ sender: UIButton) {

        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let a = buttonTitle.dropLast()
        if let doubledA = Double(a) {
            tipPercentage = doubledA / 100
        }
        
        billTextField.endEditing(true)
       
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = "\(Int(sender.value))"
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        
        if bill != "" {
            billTotal = Double(bill)!

            let tipAmount = tipPercentage * billTotal
            let total = tipAmount + billTotal
            let result = total / Double(numberOfPeople)
            resultTo2decimal = String(format: "%.2f", result)
            print(resultTo2decimal)
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.total = resultTo2decimal!
            destinationVC.totalDescription = "Split between \(numberOfPeople) people, with \(tipPercentage)% tip."
        }
    }
}

