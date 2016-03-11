//
//  Event.swift
//  RealKal
//
//  Created by Matthew Wilcox on 3/10/16.
//  Copyright © 2016 Matthew Wilcox. All rights reserved.
//

import Foundation

class Event : NSObject {
    
    var _title:String? = "";
    var title:String{
        get{
            return title;
        }
        set(createdTitle){
            _title = createdTitle;
        
        }
    }
    
    var _date:NSDate!
    var date:NSDate{
        get{
            return _date;
        }
        set(createdDate){
            _date = createdDate;
        }
    }
    
    
    
  
    

}
