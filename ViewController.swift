//
//  ViewController.swift
//  RealKal
//
//  Created by Matthew Wilcox on 3/10/16.
//  Copyright © 2016 Matthew Wilcox. All rights reserved.
//

import UIKit

var nsdata = NSUserDefaults.standardUserDefaults()
var count = 0;
var events: [String] = [];
var loadedCount = 0;
var tmp = 0;

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
         if let key = nsdata.objectForKey("count"){
            count = Int(key as! NSNumber);
        }
       
        nsdata.synchronize()
        print(NSUserDefaults.standardUserDefaults().dictionaryRepresentation())
        
        print(count)
        if loadedCount == 0{
            for (var i = 0; i < count; ++i){
                let name = "event " + String(i)
                let title = String(nsdata.objectForKey("event " + String(i))![0])
                let date = String(nsdata.objectForKey("event " + String(i))![1])
                events.append(title + ": " + date)
                tmp = count
            }
        }
        else{
            for (var i = tmp; i < count; ++i){
                let name = "event " + String(i)
                let title = String(nsdata.objectForKey("event " + String(i))![0])
                let date = String(nsdata.objectForKey("event " + String(i))![1])
                events.append(title + ": " + date)
            }
            tmp = count
        }
        print(events)
        ++loadedCount

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

