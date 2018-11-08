//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    var counter1 = 0
    @IBOutlet weak var count1: UILabel!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var middleButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    @IBAction func card(_ sender: UIButton) {
        var cardArray = [UIImage.init(named: "king"),UIImage.init(named: "three"),UIImage.init(named: "three")]
            cardArray = cardArray.shuffled()

        switch sender.tag {
        case 0:
            if cardArray[0] == UIImage.init(named:"king"){
                leftButton.setImage(UIImage.init(named: "king"), for: .normal)
                youWin()
            } else {
                leftButton.setImage(UIImage.init(named: "three"), for: .normal)
                youLose()
            }
                disableButton()
        case 1:
            if cardArray[1] == UIImage.init(named:"king"){
                middleButton.setImage(UIImage.init(named: "king"), for: .normal)
                youWin()
            } else {
                middleButton.setImage(UIImage.init(named: "three"), for: .normal)
                youLose()
            }
                disableButton()
        case 2:
            if cardArray[2] == UIImage.init(named:"king"){
                rightButton.setImage(UIImage.init(named: "king"), for: .normal)
                youWin()
            } else {
                rightButton.setImage(UIImage.init(named: "three"), for: .normal)
               youLose()
            }
                disableButton()
        default:
            print("invalid tag")
        }
        for cards in 0..<cardArray.count{
            if cardArray[cards] == UIImage(named: "king") {
                if cards == 0{
                    leftButton.setImage(UIImage.init(named: "king"), for: .normal)
                }
                else if cards == 1{
                    middleButton.setImage(UIImage.init(named: "king"), for: .normal)
                }
                else if cards == 2{
                    rightButton.setImage(UIImage.init(named: "king"), for: .normal)
                }
            }
            
        }
    }
    
    func disableButton(){
        leftButton.isEnabled = false
        middleButton.isEnabled = false
        rightButton.isEnabled = false
    }
    func youWin(){
        displayLabel.text = "You Win!"
        counter += 1
        count.text = "Win = \(counter)"
    }
    func youLose(){
        displayLabel.text = "You Lose!"
        counter1 += 1
        count1.text = "Lose = \(counter1)"
    }
    @IBAction func newGame(_ sender: UIButton) {
     
        displayLabel.text = "Pick a Card!"
      
        leftButton.isEnabled = true
        middleButton.isEnabled = true
        rightButton.isEnabled = true
        
        leftButton.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        middleButton.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        rightButton.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    }
    
}

