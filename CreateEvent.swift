//
//  CreateEvent.swift
//  RealKal
//
//  Created by Matthew Wilcox on 3/10/16.
//  Copyright © 2016 Matthew Wilcox. All rights reserved.
//

import UIKit
import Foundation
import EventKit

class CreateEvent: UIViewController {
    
    
    @IBOutlet weak var eventTitle: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    var thisEvent = Event();
    var date = "";
    var time = "";
    var eventList: [String] = [];
    
    
    
    
   
    
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //datePicker.addTarget(self, action: Selector("dataPickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        //timePicker.addTarget(self, action: Selector("dataPickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneButtonClicked(sender: AnyObject) {
        
        thisEvent.title = eventTitle.text;
        thisEvent.date = datePicker.date;
        thisEvent.time = timePicker.date;
        
        eventList = [eventTitle.text!, strDate]
        print(eventList)
        data.setValue(eventList, forKey: "event " + String(count))
        events.append(eventTitle.text! + ": " + strDate)
        ++count
        tmp = count
        data.setValue(count, forKey: "count")
        data.synchronize()
        
    }
    
    
    
}