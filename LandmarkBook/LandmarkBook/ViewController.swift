//
//  ViewController.swift
//  LandmarkBook
//
//  Created by MİZGİN YILDIRAK on 30.01.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj Mahal")
    
        landmarkImages.append(UIImage(named: "Colosseum.jpg")!)
        landmarkImages.append(UIImage(named: "Great Wall.jpeg")!)
        landmarkImages.append(UIImage(named: "Kremlin.jpg")!)
        landmarkImages.append(UIImage(named: "Stonehenge.jpg")!)
        landmarkImages.append(UIImage(named: "Taj Mahal.jpg")!)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]

        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
}

