//
//  File.swift
//  File
//
//  Created by Alex lavallee on 9/18/21.
//

import Foundation

class VEVENT {
    public init(UID: String, DTSTAMP: String, ORGANIZER: String, DTSTART: String, DTEND: String, SUMMARY: String) {
        self.UID = UID
        self.DTSTAMP = DTSTAMP
        self.ORGANIZER = ORGANIZER
        self.DTSTART = DTSTART
        self.DTEND = DTEND
        self.SUMMARY = SUMMARY
    }
    
    let UID: String
    let DTSTAMP: String
    let ORGANIZER: String
    let DTSTART: String
    let DTEND: String
    let SUMMARY: String
}
