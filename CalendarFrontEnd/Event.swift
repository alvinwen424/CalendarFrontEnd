//
//  Event.swift
//  CalendarFrontEnd
//
//  Created by alvin wen on 7/6/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class Event: NSObject {
    var name: String?
    var content: String?
    var startTime: String?
    var endTime: String?
    
    init (name: String, content: String, startTime: String, endTime: String) {
        self.name = name
        self.content = content
        self.startTime = startTime
        self.endTime = endTime
    }
    override init(){
        super.init()
    }
}
