//
//  File.swift
//  File
//
//  Created by Alex lavallee on 9/19/21.
//

import Foundation

class Expressions {
    let version: NSRegularExpression
    let prodid: NSRegularExpression
    let events: NSRegularExpression
    let uid: NSRegularExpression
    let dtstamp: NSRegularExpression
    let organizer: NSRegularExpression
    let dtstart: NSRegularExpression
    let dtend: NSRegularExpression
    let summary: NSRegularExpression
    init() throws {
        let versionPattern = #"VERSION:(?<VERSION>.*)"#
        version = try NSRegularExpression(pattern: versionPattern, options: [])
        let prodidPattern = #"PRODID:(?<PRODID>.*)"#
        prodid = try NSRegularExpression(pattern: prodidPattern, options: [])
        let eventsPattern = #"(BEGIN:VEVENT\n((.|\n)*?)END:VEVENT)+"#
        events = try NSRegularExpression(pattern: eventsPattern, options: [])
        let uidPattern = #"UID:(?<UID>.*)"#
        uid = try NSRegularExpression(pattern: uidPattern, options: [])
        let dtstampPattern = #"DTSTAMP:(?<DTSTAMP>.*)"#
        dtstamp = try NSRegularExpression(pattern: dtstampPattern, options: [])
        let organizerPattern = #"ORGANIZER;(?<ORGANIZER>.*)"#
        organizer = try NSRegularExpression(pattern: organizerPattern, options: [])
        let dtstartPattern = #"DTSTART:(?<DTSTART>.*)"#
        dtstart = try NSRegularExpression(pattern: dtstartPattern, options: [])
        let dtendPattern = #"DTEND:(?<DTEND>.*)"#
        dtend = try NSRegularExpression(pattern: dtendPattern, options: [])
        let summaryPattern = #"SUMMARY:(?<SUMMARY>.*)"#
        summary = try NSRegularExpression(pattern: summaryPattern, options: [])
    }
}
