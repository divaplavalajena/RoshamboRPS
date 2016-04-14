//
//  HistoryViewController.swift
//  RoshamboRPS
//
//  Created by Jena Grafton on 4/13/16.
//  Copyright © 2016 Bella Voce Productions. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    var history = [History]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return history.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellID = "HistoryCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(CellID, forIndexPath: indexPath)
        
        let match = self.history[indexPath.row]
        
        cell.textLabel!.text = match.matchResult
        cell.detailTextLabel!.text = match.matchType
        
        
        return cell
        
    }

    
    @IBAction func dismissHistory(sender: AnyObject) {
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
