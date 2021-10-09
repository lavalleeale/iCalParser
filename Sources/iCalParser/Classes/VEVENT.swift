//
//  File.swift
//  File
//
//  Created by Alex lavallee on 9/18/21.
//

import Foundation

public class VEVENT {
    public init(UID: String, DTSTAMP: String, ORGANIZER: String?, DTSTART: String, DTEND: String?, SUMMARY: String, DESCRIPTION: String?) {
        self.UID = UID
        self.DTSTAMP = ParseDate(utc: DTSTAMP)
        self.ORGANIZER = ORGANIZER
        self.DTSTART = ParseDate(utc: DTSTART)
        if DTEND != nil {
            self.DTEND = ParseDate(utc: DTEND!)
        } else {
            self.DTEND = nil
        }
        self.SUMMARY = SUMMARY
        self.DESCRIPTION = DESCRIPTION
    }
    
    
    public let UID: String
    public let DTSTAMP: Date
    public let ORGANIZER: String?
    public let DTSTART: Date
    public let DTEND: Date?
    public let SUMMARY: String
    public let DESCRIPTION: String?
}
