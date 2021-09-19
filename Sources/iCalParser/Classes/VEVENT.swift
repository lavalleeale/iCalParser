//
//  File.swift
//  File
//
//  Created by Alex lavallee on 9/18/21.
//

import Foundation

public class VEVENT {
    public init(UID: String, DTSTAMP: String, ORGANIZER: String, DTSTART: String, DTEND: String, SUMMARY: String) {
        self.UID = UID
        self.DTSTAMP = DTSTAMP
        self.ORGANIZER = ORGANIZER
        self.DTSTART = DTSTART
        self.DTEND = DTEND
        self.SUMMARY = SUMMARY
    }
    
    public let UID: String
    public let DTSTAMP: String
    public let ORGANIZER: String
    public let DTSTART: String
    public let DTEND: String
    public let SUMMARY: String
}
