//
//  XylophoneViewController.swift
//  Xylophone
//
//  Created by Hanoudi on 6/22/20.
//  Copyright © 2020 Hanan. All rights reserved.
//
//  We use the AVFoundation framework in order to access hardware and play sounds etc

import UIKit
import AVFoundation

class XylophoneViewController: UIViewController {
    
    //  MARK:- Variables
    //  Create AVAudioPlayer to playback audio data in any format from a file or memory
    
    var audioPlayer: AVAudioPlayer!
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playNote(noteName: sender.currentTitle!)
        
        //Reduces the buttons opacity
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        
    }
    
    // A function that utilizes the audio player to play sounds from files
    // Takes in file name (in main Bundle i.e project file)
    // with extension .wav and plays it
    func playNote(noteName: String) {
        let url = Bundle.main.url(forResource: noteName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer.play()
        
    }
    
    //  MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}








