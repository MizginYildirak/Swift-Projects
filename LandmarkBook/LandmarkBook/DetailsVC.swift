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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
