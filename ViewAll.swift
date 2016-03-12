//
//  ViewAll.swift
//  RealKal
//
//  Created by Matthew Wilcox on 3/11/16.
//  Copyright © 2016 Matthew Wilcox. All rights reserved.
//

import Foundation
import UIKit;
import EventKit

class ViewAll : UIViewController {


    @IBOutlet weak var tableView: UITableView!
    var index = 9999;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITableViewDataSource Functions
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->   UITableViewCell! {
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        cell.textLabel?.text = events[indexPath.row]
        print(indexPath.row)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let indexPath = tableView.indexPathForSelectedRow
        let currentCell = tableView.cellForRowAtIndexPath(indexPath!)! as UITableViewCell;
        index = indexPath!.row;
    }
    
    @IBAction func deleteEvent(sender: AnyObject) {
        
        events.removeAtIndex(index)
        nsdata.removeObjectForKey("event " + String(index))
        --count
        nsdata.setValue(count, forKey: "count")
        nsdata.synchronize()
    
    
    }
    
 }





