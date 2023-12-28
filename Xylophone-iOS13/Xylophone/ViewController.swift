//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
    }
    
    var player: AVAudioPlayer?

    func playSound(soundName: String) {
       let url = Bundle.main.url(forResource: soundName, withExtension: "wav")

            player = try! AVAudioPlayer(contentsOf: url!)

        player?.play()

    }
}

