//
//  Audio.swift
//  Guessor
//
//  Created by Dardan on 3/19/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {
    
    
    // BUTTON PRESS - CORRECT
    func pressButtonCorrectSound() {
        do {
            self.correctSound =  try AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "buttonCorrect", ofType: "mp3")!))
            self.correctSound.play()
        } catch {
            print("Error")
        }
        correctSound.volume = 0.1
    }
    
    // BUTTON PRESS - INCORRECT
    func pressButtonWrongSound() {
        do {
            self.incorrectSound =  try AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "buttonIncorrect", ofType: "mp3")!))
            self.incorrectSound.play()
        } catch {
            print("Error")
        }
        incorrectSound.volume = 0.05
    }
    
    // Score 4 Correct
    func pressCorrectFour() {
        do {
            self.correctFourSound =  try AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "fourCorrect", ofType: "mp3")!))
            self.correctFourSound.play()
        } catch {
            print("Error")
        }
        correctFourSound.volume = 0.1
    }
    
    
    
    // BACKGROUND MUSIC
    func playBackgroundMusic(_ filename: String) {
        let url = Bundle.main.url(forResource: filename, withExtension: nil)
        guard let newURL = url else {
            print("Could not find file: \(filename)")
            return
        }
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: newURL)
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
