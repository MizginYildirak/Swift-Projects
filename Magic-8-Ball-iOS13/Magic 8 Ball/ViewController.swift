//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]


    @IBOutlet weak var imageView: UIImageView!

    @IBAction func AskBtnPressed(_ sender: Any) {
        
        //        var arr:[UIImage] = []
        //
        //        var ballOne = UIImage(resource: .ball1)
        //        var ballTwo = UIImage(resource: .ball2)
        //        var ballThree = UIImage(resource: .ball3)
        //        var ballFour = UIImage(resource: .ball4)
        //        var ballFive = UIImage(resource: .ball5)
        //
        //        arr.append(ballOne)
        //        arr.append(ballTwo)
        //        arr.append(ballThree)
        //        arr.append(contentsOf: [ballFour, ballFive])
        //        imageView.image = arr.randomElement()
        imageView.image = ballArray.randomElement()
    }
    

 
}



