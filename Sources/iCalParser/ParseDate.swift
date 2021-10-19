//
//  File.swift
//  File
//
//  Created by Alex lavallee on 9/19/21.
//

import Foundation

internal func ParseDate(utc: String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyyMMdd"
    var date = dateFormatter.date(from: utc)
    if date == nil {
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "yyyyMMdd'T'HHmmss'Z'"
        date = dateFormatter.date(from: utc)
    }
    return date!
}
