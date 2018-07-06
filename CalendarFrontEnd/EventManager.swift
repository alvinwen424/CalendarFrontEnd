//
//  EventManager.swift
//  CalendarFrontEnd
//
//  Created by alvin wen on 7/6/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class EventManager: NSObject {
    static var events = [Event]()
    
    class func AddEvent(name: String, content: String, startTime: String, endTime: String) {
        let perEvent = Event(name: name, content: content, startTime: startTime, endTime: endTime)
        events.append(perEvent)
    }
    
    class func DeleteEvent(id: Int){
        events.remove(at: id)
    }
    
    class func GetRecipe(id:Int) -> Event{
        if(events.count > 0) {
            return events[id]
        }
        return Event()
    }
}

