//
//  TopButton.swift
//  Guessor
//
//  Created by Dardan on 4/12/16.
//  Copyright © 2016 Meha. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import QuartzCore


//class GenerateButtons : BaseLevel {
//    
//    // switch variable
//    var value = 0
//
//
//    var greentop1: UILabel?
//    var greentop2: UILabel?
//    var greentop3: UILabel?
//    var greentop4: UILabel?
//
//    var symb:Int = 0
//    var back:Int = 0
//    var labelcolor:UILabel?
//    
//    var cane: UIImageView?
//    var candy: UIImageView?
//    var pop: UIImageView?
//    var label: UILabel?
//    
//    var runner: Int = 4
//
//    var topButOneTemp:GenerateButtons?
//    var topButTwoTemp:GenerateButtons?
//    var topButThreeTemp:GenerateButtons?
//    var topButFourTemp:GenerateButtons?
//    var green1:UILabel?
//    var green2:UILabel?
//    var green3:UILabel?
//    var green4:UILabel?
//    
//    var counter:Float = 10
//
//    
//    // Update top button image
//    func randomImage(_ cane:UIImageView, candy:UIImageView, pop:UIImageView){
//        value = Int(arc4random_uniform(3) + 1)
//        switch value {
//        case 1: symb = 1
//        case 2: symb = 2
//        case 3: symb = 3
//        default: symb = 10
//        }
//        if symb == 1 {
//            cane.isHidden = false
//            candy.isHidden = true
//            pop.isHidden = true
//        }
//        if symb == 2 {
//            cane.isHidden = true
//            candy.isHidden = false
//            pop.isHidden = true
//        }
//        if symb == 3 {
//            cane.isHidden = true
//            candy.isHidden = true
//            pop.isHidden = false
//        }
//    }
//    
//    // BACKGROUND COLOR
//    func randomColor(_ labelcolor:UILabel){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: back = 1
//        case 2: back = 2
//        case 3: back = 3
//        case 4: back = 4
//        default: back = 10
//        }
//        if back == 1 {
//            labelcolor.backgroundColor = UIColor(netHex: 0x857AFF)
//        }
//        if back == 2 {
//            labelcolor.backgroundColor = UIColor(netHex: 0xf7b220)
//        }
//        if back == 3 {
//            labelcolor.backgroundColor = UIColor(netHex: 0xf77c2c)
//        }
//        if back == 4 {
//            labelcolor.backgroundColor = UIColor(netHex: 0xa7cfff)
//        }
//    }
//    // BACKGROUND COLOR
//    func randomColorBottom(_ labelcolor:UIButton){
//        value = Int(arc4random_uniform(4) + 1)
//        switch value {
//        case 1: back = 1
//        case 2: back = 2
//        case 3: back = 3
//        case 4: back = 4
//        default: back = 10
//        }
//        if back == 1 {
//            labelcolor.backgroundColor = UIColor(netHex: 0x857AFF)
//        }
//        if back == 2 {
//            labelcolor.backgroundColor = UIColor(netHex: 0xf7b220)
//        }
//        if back == 3 {
//            labelcolor.backgroundColor = UIColor(netHex: 0xf77c2c)
//        }
//        if back == 4 {
//            labelcolor.backgroundColor = UIColor(netHex: 0xa7cfff)
//        }
//    }
//    
//    func getButtonInfo(_ topButOne:GenerateButtons, green1Temp:UILabel, topButTwo:GenerateButtons, green2Temp:UILabel,  topButThree:GenerateButtons, green3Temp:UILabel, topButFour:GenerateButtons, green4Temp:UILabel){
//        topButOneTemp = topButOne
//        topButTwoTemp = topButTwo
//        topButThreeTemp = topButThree
//        topButFourTemp = topButFour
//        green1 = green1Temp
//        green2 = green2Temp
//        green3 = green3Temp
//        green4 = green4Temp
//    }
//    
//    // Update top button image
//    func getImage(_ buttonNumber:Int, cane:UIImageView, candy:UIImageView, pop:UIImageView){
//
//
//        if buttonNumber == 1 {
//            cane.isHidden = false
//            candy.isHidden = true
//            pop.isHidden = true
//        }
//        if buttonNumber == 2 {
//            cane.isHidden = true
//            candy.isHidden = false
//            pop.isHidden = true
//        }
//        if buttonNumber == 3 {
//            cane.isHidden = true
//            candy.isHidden = true
//            pop.isHidden = false
//        }
//
//    }
//    
//    func compareButtonsDown(_ buttonToCompare:GenerateButtons, buttonColor:UIButton, buttonGreen:UILabel, buttonRed:UILabel){
//        
//        //print(buttonToCompare.back)
//
//        func correctAns(){
//            pressButtonCorrectSound()
//            scoreKeep += 1
//            buttonGreen.isHidden = false
//            counter += 1
//            delay(0.3){
//                buttonGreen.isHidden = true
//            }
//        }
//        func incorrectAns(){
//            pressButtonWrongSound()
//            lives -= 1
//            buttonRed.isHidden = false
//            delay(0.3){
//                buttonRed.isHidden = true
//            }
//        }
//        
//        if runner == 4{
//            if (buttonToCompare.back == topButOneTemp!.back) && (buttonToCompare.symb == topButOneTemp!.symb){
//                correctAns()
//            } else{
//                incorrectAns()
//            }
//        }
//        
//        if runner == 3{
//            if (buttonToCompare.back == topButTwoTemp!.back) && (buttonToCompare.symb == topButTwoTemp!.symb){
//                correctAns()
//            } else{
//                incorrectAns()
//            }
//        }
//        
//        if runner == 2{
//            if (buttonToCompare.back == topButThreeTemp!.back) && (buttonToCompare.symb == topButThreeTemp!.symb){
//                correctAns()
//            } else{
//                incorrectAns()
//            }
//        }
//        
//        if runner == 1{
//            if (buttonToCompare.back == topButFourTemp!.back) && (buttonToCompare.symb == topButFourTemp!.symb){
//                correctAns()
//            } else{
//                incorrectAns()
//            }
//        }
//
//    } // END compareButtonsDown
//    
//    func compareButtonsRelease(_ buttonToCompare:GenerateButtons, buttonColor:UIButton, buttonGreen:UILabel, buttonRed:UILabel){
//
//        func changeTrueOrNot(){
//            if runner == 4{
//                green1!.isHidden = false
//            }
//            if runner == 3{
//                green2!.isHidden = false
//                // bottom buttons
//            }
//            if runner == 2{
//                green3!.isHidden = false
//            }
//            if runner == 1{
//                green4!.isHidden = false
//            }
//            runner -= 1
//
//        }
//        
//        if runner == 4{
//            if (buttonToCompare.back == topButOneTemp!.back) && (buttonToCompare.symb == topButOneTemp!.symb){
//                changeTrueOrNot()
//            }
//        }
//        
//        
//        if runner == 3{
//            if (buttonToCompare.back == topButTwoTemp!.back) && (buttonToCompare.symb == topButTwoTemp!.symb){
//                changeTrueOrNot()
//            }
//        }
//        
//        if runner == 2{
//            if buttonToCompare.back == topButThreeTemp!.back && buttonToCompare.symb == topButThreeTemp!.symb{
//                changeTrueOrNot()
//            }
//        }
//        
//        
//        if runner == 1{
//            if buttonToCompare.back == topButFourTemp!.back && buttonToCompare.symb == topButFourTemp!.symb{
//                changeTrueOrNot()
//            }
//        }
//        
//        // clear green top colors
//        if self.runner == 0{
//            runner = 4
//            delay(0.5){
//            self.green1?.isHidden = true
//            self.green2?.isHidden = true
//            self.green3?.isHidden = true
//            self.green4?.isHidden = true
//        }
//        }
//        
////        print("runner \(runner)")
//        
//    } // END compareButtonsDown
//    
//    
//    
//    
//} // END CLASS
//
//
//var topButton1 = GenerateButtons()
//var topButton2 = GenerateButtons()
//var topButton3 = GenerateButtons()
//var topButton4 = GenerateButtons()
//
//let botButton1 = GenerateButtons()
//let botButton2 = GenerateButtons()
//let botButton3 = GenerateButtons()
//let botButton4 = GenerateButtons()
//let botButton5 = GenerateButtons()
//let botButton6 = GenerateButtons()
//let botButton7 = GenerateButtons()
//let botButton8 = GenerateButtons()
//let botButton9 = GenerateButtons()
//
//let compare = GenerateButtons()
//
//var tempButton = GenerateButtons()
//
