//
//  File.swift
//  File
//
//  Created by Alex lavallee on 9/18/21.
//

import Foundation

public class VCALENDAR {
    public init(events: [VEVENT], PRODID: String, VERSION: Double) {
        self.events = events
        self.PRODID = PRODID
        self.VERSION = VERSION
    }
    
    let events: [VEVENT]
    let PRODID: String
    let VERSION: Double
}
