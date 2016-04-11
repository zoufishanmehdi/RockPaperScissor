//
//  ResultsVC.swift
//  RockPaperScissor
//
//  Created by Zoufishan Mehdi on 4/5/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import UIKit

enum CompOptions: Int {
    case rock = 1
    case paper = 2
    case scissor = 3
}

//func randomColor() -> UIColor {
//    let randomIndex = Int(arc4random() % UInt32(colors.count))
//    We choose a color from the colors array using the random number as the index.
//    return colors[randomIndex]
//}

//var opponentPicked = 0
func compPicked() -> Int {
    // Generate a random Int32 using arc4Random
    let randomValue = 1 + arc4random() % 3
    
    // Return a more convenient Int, initialized with the random value
    return Int(randomValue)
//    opponentPicked = Int(arc4random() % UInt32(3))
//    print(opponentPicked)
//    return opponentPicked
}

class ResultsVC: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    var playerPicked: Int = 0
    var opponentPicked = compPicked()
    
    override func viewWillAppear(animated: Bool) {
        let play = (playerPicked, opponentPicked)
        switch play {
        case(1,1):
            resultsLabel.text = "It's a tie 👔 We both have rocks"
        case(1,2):
            resultsLabel.text = "You lose 😢 Paper covers rock"
        case(1,3):
            resultsLabel.text = "You win 🙌 Rock crushes scissor"
        case(2,1):
            resultsLabel.text = "You win 🙌 Paper covers rock"
        case(2,2):
             resultsLabel.text = "It's a tie 👔 We both have papers"
        case(2,3):
            resultsLabel.text = "You lose 😢 Scissors cut paper"
        case(3,1):
            resultsLabel.text = "You lose 😢  Rock crushes scissor"
        case(3,2):
            resultsLabel.text = "You win 🙌 Scissors cut paper"
        case(3,3):
             resultsLabel.text = "It's a tie 👔 We both have scissors"
        default:
            resultsLabel.text = "..."
        }
    }


@IBAction func playAgainTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
