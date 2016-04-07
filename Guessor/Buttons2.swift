//
//  Buttons2.swift
//  Guessor
//
//  Created by Dardan on 4/7/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

extension BaseLevel {

    func blackBackground(){
        // insert code here
        // change opacity
        // change color buttons
        topBackground.layer.opacity = 0.1
        topBackgroundScore.layer.opacity = 0.1
        topBackgroundNumbers.layer.opacity = 0.1
        middleBackground.layer.opacity = 0.1
        bottomBackground.layer.opacity = 0.1
        coinLabel.textColor = UIColor(netHex: 0xffffff)
        
    }
    
    func whiteBackground(){
        // insert code here
        topBackground.layer.opacity = 1.0
        topBackgroundScore.layer.opacity = 1.0
        topBackgroundNumbers.layer.opacity = 1.0
        middleBackground.layer.opacity = 1.0
        bottomBackground.layer.opacity = 1.0
        coinLabel.textColor = UIColor(netHex: 0xa3a3a3)
    }

}
