//
//  CreateEvent.swift
//  RealKal
//
//  Created by Matthew Wilcox on 3/10/16.
//  Copyright © 2016 Matthew Wilcox. All rights reserved.
//

import UIKit

class CreateEvent: UIViewController {
    
    @IBOutlet weak var eventTitle: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    var eventArray = [base]();
    
    var dateFormatter = NSDateFormatter();
    var timeFormatter = NSDateFormatter();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datePicker.addTarget(self, action: Selector("dataPickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        timePicker.addTarget(self, action: Selector("dataPickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}