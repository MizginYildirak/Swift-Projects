//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by MİZGİN YILDIRAK on 13.01.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalDescriptionLabel: UILabel!
    
    var total = "0.0"
    var totalDescription = ""
     
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(total)
        totalDescriptionLabel.text = totalDescription
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
