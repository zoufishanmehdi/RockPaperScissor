//
//  ResultsVC.swift
//  RockPaperScissor
//
//  Created by Zoufishan Mehdi on 4/5/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import UIKit

/*
rock = 1
paper = 2
scissor = 3
*/

func compPicked() -> Int {
    let randomValue = 1 + arc4random() % 3
    return Int(randomValue)
}

class ResultsVC: UIViewController {

    @IBOutlet weak var resultsImage: UIImageView!
    @IBOutlet weak var resultsLabel: UILabel!
    var playerPicked: Int = 0
    var opponentPicked = compPicked()
    
    override func viewWillAppear(animated: Bool) {
        let play = (playerPicked, opponentPicked)
        switch play {
        case(1,1):
            resultsImage.image = UIImage(named:"itsATie")
            resultsLabel.text = "It's a tie 👔 We both have rocks"
        case(1,2):
            resultsImage.image = UIImage(named:"PaperCoversRock")
            resultsLabel.text = "You lose 😢 Paper covers rock"
        case(1,3):
            resultsImage.image = UIImage(named:"RockCrushesScissors")
            resultsLabel.text = "You win 🙌 Rock crushes scissor"
        case(2,1):
            resultsImage.image = UIImage(named:"PaperCoversRock")
            resultsLabel.text = "You win 🙌 Paper covers rock"
        case(2,2):
            resultsImage.image = UIImage(named:"itsATie")
            resultsLabel.text = "It's a tie 👔 We both have papers"
        case(2,3):
            resultsImage.image = UIImage(named: "ScissorsCutPaper")
            resultsLabel.text = "You lose 😢 Scissors cut paper"
        case(3,1):
            resultsImage.image = UIImage(named:"RockCrushesScissors")
            resultsLabel.text = "You lose 😢  Rock crushes scissor"
        case(3,2):
            resultsImage.image = UIImage(named: "ScissorsCutPaper")
            resultsLabel.text = "You win 🙌 Scissors cut paper"
        case(3,3):
            resultsImage.image = UIImage(named:"itsATie")
            resultsLabel.text = "It's a tie 👔 We both have scissors"
        default:
            resultsLabel.text = "..."
        }
    }


@IBAction func playAgainTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
