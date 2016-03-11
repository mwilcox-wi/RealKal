//
//  ViewAll.swift
//  RealKal
//
//  Created by Matthew Wilcox on 3/11/16.
//  Copyright © 2016 Matthew Wilcox. All rights reserved.
//

import Foundation
import UIKit;

class ViewAll : UIViewController {


    @IBOutlet weak var listView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var index = 9999
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // UITableViewDataSource Functions
    
    func tableView(listView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(listView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->   UITableViewCell! {
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        cell.textLabel?.text = events[indexPath.row]
        print(indexPath.row)
        return cell
    }
    
    func tableView(listView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let indexPath = listView.indexPathForSelectedRow
        let currentCell = listView.cellForRowAtIndexPath(indexPath!)! as UITableViewCell
        index = indexPath!.row
    }
    
    @IBAction func deleteClicked(sender: AnyObject) {
        events.removeAtIndex(index)
        data.removeObjectForKey("event " + String(index))
        --count
        data.setValue(count, forKey: "count")
        data.synchronize()
    }
    




}
