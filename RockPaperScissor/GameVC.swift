//
//  GameVC.swift
//  RockPaperScissor
//
//  Created by Zoufishan Mehdi on 4/5/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import UIKit

class GameVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func paper(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! ResultsVC
        controller.playerPicked = 3
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    
    

    @IBAction func scissor(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! ResultsVC
        controller.playerPicked = 2
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func rock(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! ResultsVC
        controller.playerPicked = 1
        self.presentViewController(controller, animated: true, completion: nil)
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
