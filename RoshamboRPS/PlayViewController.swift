//
//  PlayViewController.swift
//  RoshamboRPS
//
//  Created by Jena Grafton on 3/30/16.
//  Copyright © 2016 Bella Voce Productions. All rights reserved.
//

import UIKit


class PlayViewController: UIViewController {
    
    var roshamboResult: Int?
    var senderInt: Int?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "paperSegue" {
            let controller = segue.destinationViewController as! ResultsViewController
            controller.roshamboResult = roshamboResult
            controller.sender = senderInt
        } else if segue.identifier == "scissorsSegue" {
            let sender2 = sender as! UIButton
            roshamboResult = getRoshamboResult(sender as! UIButton)
            
            let controller = segue.destinationViewController as! ResultsViewController
            controller.roshamboResult = roshamboResult
            controller.sender = sender2.tag
        }
    }
    
    // MARK: Segue with Code Approach
    @IBAction func paperSegue(sender: AnyObject) {
        //This button is connected to the paperSegue button for the code + segue completion
        roshamboResult = getRoshamboResult(sender)
        senderInt = sender.tag
        
        performSegueWithIdentifier("paperSegue", sender: self)
    }
    

    // MARK: Programmatic Approach
    @IBAction func playRoshambo(sender: AnyObject) {
        //This method is connected to the RockButton for the programmatic segue
        
        //call method to play game and produce result here - using sender tag
        roshamboResult = getRoshamboResult(sender)
        
        var controller: ResultsViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        
        controller.roshamboResult = roshamboResult
        controller.sender = sender.tag
        
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    
    // MARK: Utilities
    
    /**
    * Randomly generates an Int from 1 to 3
    */
    func randomValue() -> Int {
        // Generate a random number using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        return Int(randomValue)
    }
    
    //Method which compares button press sender.tag to random number to determine winner
    func getRoshamboResult(sender: AnyObject) -> Int {
        var result: Int = 0
        let sender = sender.tag
        let randomResult = randomValue()
        
        // Result Rock = 1, Paper = 2, Scissors = 3, Tie = 4
        if (sender == 1 && randomResult == 1) || (sender == 2 && randomResult == 2) || (sender == 3 && randomResult == 3) {
            result = 4
        } else if (sender == 1 && randomResult == 3) || (sender == 3 && randomResult == 1) {
            result = 1
        } else if (sender == 2 && randomResult == 1) || (sender == 1 && randomResult == 2) {
            result = 2
        } else if (sender == 3 && randomResult == 2) || (sender == 2 && randomResult == 3) {
            result = 3
        }
        
        return result
    }
    


}

