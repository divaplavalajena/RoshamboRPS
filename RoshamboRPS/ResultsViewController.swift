//
//  ResultsViewController.swift
//  RoshamboRPS
//
//  Created by Jena Grafton on 3/30/16.
//  Copyright © 2016 Bella Voce Productions. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var roshamboResult: Int?
    var sender: Int?
    
    
    @IBOutlet var resultsImageOutlet: UIImageView!
    @IBOutlet var resultsLabelOutlet: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if roshamboResult == 4 {
            resultsImageOutlet.image = UIImage(named: "itsATie.png")
            resultsLabelOutlet.text = "No one wins.  It's a Tie!"
        
        } else if sender == 1 && roshamboResult == 1 {
            resultsImageOutlet.image = UIImage(named: "RockCrushesScissors.jpeg")
            resultsLabelOutlet.text = "You WIN! Rock crushes Scissors!"
        } else if sender == 2 && roshamboResult == 2 {
            resultsImageOutlet.image = UIImage(named: "PaperCoversRock.jpg")
            resultsLabelOutlet.text = "You WIN! Paper Covers Rock!"
        } else if sender == 3 && roshamboResult == 3 {
            resultsImageOutlet.image = UIImage(named: "ScissorsCutPaper.jpg")
            resultsLabelOutlet.text = "You WIN! Scissors Cut Paper!"
        } else if sender != roshamboResult {
            switch roshamboResult! {
            case 1:
                resultsImageOutlet.image = UIImage(named: "RockCrushesScissors.jpeg")
                resultsLabelOutlet.text = "You lose. Rock crushes Scissors!"
            case 2:
                resultsImageOutlet.image = UIImage(named: "PaperCoversRock.jpg")
                resultsLabelOutlet.text = "You lose. Paper Covers Rock!"
            case 3:
                resultsImageOutlet.image = UIImage(named: "ScissorsCutPaper.jpg")
                resultsLabelOutlet.text = "You lose. Scissors Cut Paper!"
            default:
                resultsImageOutlet.image = UIImage(named: "itsATie.png")
                resultsLabelOutlet.text = "No one wins.  It's a Tie!"
            }
        }
        
        
    }
    
    
    @IBAction func playAgainButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
