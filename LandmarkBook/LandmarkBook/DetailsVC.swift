//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by MİZGİN YILDIRAK on 31.01.2024.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        imageview.image = selectedLandmarkImage
    }

}
