//
//  ViewController.swift
//  SpeechRecognision
//
//  Created by Rambod Azimi on 4/27/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    

    @IBOutlet var myButton: UIButton!
    @IBOutlet var answer: UILabel!
    
    @IBOutlet var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.isUserInteractionEnabled = true
        myImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped)))
    }
    
    @objc private func handleImageSelector() {
        print("Pressed image selector")
    }
    @IBAction func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
    
        let a = AVSpeechUtterance(string: "Hello. My name is Eve. I am here to help you diagnose your mental health problems and to propose useful advice to overcome them! If you know how to start the conversation with me, simply press the below button! If not, press the help button.")
        a.voice = AVSpeechSynthesisVoice(language: "en-US")
        a.rate = 0.5
        
        let s = AVSpeechSynthesizer()
        s.speak(a)
        
        let audioSession = AVAudioSession.sharedInstance()
         do {
             try audioSession.setCategory(AVAudioSession.Category.playback)
             try audioSession.setActive(false, options: .notifyOthersOnDeactivation)
         } catch {
             // handle errors
         }
    }

}
