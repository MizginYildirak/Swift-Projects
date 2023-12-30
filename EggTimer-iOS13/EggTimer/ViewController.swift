//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
        var player: AVAudioPlayer?
        var timer = Timer()
        var counter = 0
        var secondsPassed = 0

    @IBAction func hardnessSelected(_ sender: UIButton) {

        timer.invalidate()
        let hardness = sender.currentTitle!
        counter = eggTimes[hardness]!
       startTimer()

        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
    }
    
   func startTimer() {
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    func playSound() {
     let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        
        player?.play()
    }
    
    
    @objc func updateCounter() {
        if secondsPassed < counter {
            secondsPassed += 1
            _ = secondsPassed / counter
            
            progressBar.progress = Float(secondsPassed) / Float(counter)
            print("\(counter) seconds")
        
        } else {
            timer.invalidate()
            playSound()
            titleLabel.text = "DONE!"
        }
    }
}
