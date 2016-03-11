//
//  ViewAll.swift
//  RealKal
//
//  Created by Matthew Wilcox on 3/11/16.
//  Copyright © 2016 Matthew Wilcox. All rights reserved.
//

import UIKit

class ViewDay: UIViewController {
    
   
    @IBOutlet weak var block: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    var thru = 0
    var temp = 0
    var date = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func dateSelected(sender: AnyObject) {
    
        block.text = ""
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        date = dateFormatter.stringFromDate(datePicker.date)
        print(date);
        
        if count > 0 {
            for var i = 0; i < count; ++i {
                let date = events[i]
                var index = date.endIndex.advancedBy(-6)
                var substring = date.substringToIndex(index)
                var split = substring.componentsSeparatedByString(": ")
                print(split[1])
                if (date == split[1]){
                    block.text = block.text + events[i] + "\n";
                }
                
            }
        }
        else{
            block.text = "No events found";
        }
    }
    
    
}

