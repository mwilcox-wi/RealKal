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
    
    @IBOutlet weak var eTitle: UITextField!
    @IBOutlet weak var datePick: UIDatePicker!
    var date = "";
    var eventList: [String] = [];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dateChanged(sender: UIDatePicker) {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        date = dateFormatter.stringFromDate(datePick.date)
    }


    
    
    @IBAction func createEvent(sender: AnyObject) {
        
        eventList = [eTitle.text!, date];
        print(eventList);
        nsdata.setValue(eventList, forKey: "event " + String(count));
        events.append(eTitle.text! + ": " + date);
        ++count;
        tmp = count;
        nsdata.setValue(count, forKey: "count");
        nsdata.synchronize();
    }
    
   
    
    
    
}