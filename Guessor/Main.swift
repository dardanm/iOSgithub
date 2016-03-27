//
//  Main.swift
//  Guessor
//
//  Created by Dardan on 3/25/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension ViewController {
    
    // ========= MAIN
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // TO-DO LIST
        // ** pause game when home button is pressed
        
        // BUGS
        
        progressTimer.transform = CGAffineTransformScale(progressTimer.transform, 1, 22)
        
        startTimer()
        
        xpProgressBar.transform = CGAffineTransformScale(xpProgressBar.transform, 1, 8)
        xpProgressBar.progress = 0.0
        
        countDownLabel.textColor = UIColor(netHex: 0xf36723)
        
        testingLabel.backgroundColor = UIColor (netHex: 0x8ef32f)
        testingLabel.layer.opacity = 0
        
        lifeOne.backgroundColor = UIColor (netHex: 0xF54040)
        lifeTwo.backgroundColor = UIColor (netHex: 0xF54040)
        lifeThree.backgroundColor = UIColor (netHex: 0xF54040)
        
        prefersStatusBarHidden()
        
        runOrNot = 4
        
        // top numbers randomize
        numberOneOptionsColors()
        numberOneOptionsText()
        
        numberTwoOptionsColors()
        numberTwoOptionsText()
        
        numberThreeOptionsColors()
        numberThreeOptionsText()
        
        numberFourOptionsColors()
        numberFourOptionsText()
        
        // bottom buttons randomize numbers
        buttonOneOptionsText()
        buttonTwoOptionsText()
        buttonThreeOptionsText()
        buttonFourOptionsText()
        buttonFiveOptionsText()
        buttonSixOptionsText()
        buttonSevenOptionsText()
        buttonEightOptionsText()
        buttonNineOptionsText()
        
        // bottom buttons randomize background colors
        buttonOneOptionsColors()
        buttonTwoOptionsColors()
        buttonThreeOptionsColors()
        buttonFourOptionsColors()
        buttonFiveOptionsColors()
        buttonSixOptionsColors()
        buttonSevenOptionsColors()
        buttonEightOptionsColors()
        buttonNineOptionsColors()
        
        // set shadow options for buttons
        shadowOptions()
        
        // try again
        tryAgainLabel.enabled = false
        tryAgainLabel.layer.opacity = 0
        
        playBackgroundMusic("background.mp3")
        backgroundMusicPlayer.volume = 0.5
        
    }
    
    // timer + timer progress bar
    func update() {
        
        if scoreKeep == 0 {
            runOrNot = 4
        }
        
        if count != 0 {
            count--
        }
        
        if count >= 10 {
            progressTimer.progress = 1.0
        }
        if count == 9 {
            progressTimer.progress = 0.9
        }
        if count == 8 {
            progressTimer.progress = 0.8
        }
        if count == 7 {
            progressTimer.progress = 0.7
        }
        if count == 6 {
            progressTimer.progress = 0.6
        }
        if count == 5 {
            progressTimer.progress = 0.5
        }
        if count == 4 {
            progressTimer.progress = 0.4
        }
        if count == 3 {
            progressTimer.progress = 0.3
        }
        if count == 2 {
            progressTimer.progress = 0.2
        }
        if count == 1 {
            progressTimer.progress = 0.1
        }
        if count == 0 {
            progressTimer.progress = 0.0
        }
        
        countDownLabel.text = String(count)
        
        if (count == 1 || count == 2 || count == 3){
            countDownLabel.textColor = UIColor(netHex: 0xfc913a)
        }
        if (count == 0){
            countDownLabel.textColor = UIColor(netHex: 0xff0000)
        }
    }
    
    // check if game is finished
    func gameFinish(){
        
        if ( count == 0 ){
            runOrNot = 4
            disableButtons()
            stopTimer()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if ( lives == 0 ){
            runOrNot = 4
            disableButtons()
            stopTimer()
            tryAgainLabel.layer.opacity = 1
            tryAgainLabel.enabled = true
        }
        if scoreKeep == 4 {
            runOrNot = 4
            levelCompleteOptions()
            disableButtons()
            stopTimer()
            resetRoll()
        }
        
        if xpProgressBar.progress == 1.0 {
            xpProgressBar.progress = 0.0
        }
        
        if lives == 2 {lifeOne.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives == 1 {lifeTwo.backgroundColor = UIColor (netHex: 0xFFFFFF)}
        if lives == 0 {lifeThree.backgroundColor = UIColor (netHex: 0xFFFFFF)}
    }
    
    
    
}

// EXTRA - OUTSIDE - EXTENSIONS


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}