import Foundation

public struct iCalParser {
    public static func parseIcal(data: String) throws -> VCALENDAR {
        let expressions = try Expressions()
        let version = try namedMatch(regex: expressions.version, name: "VERSION", data: data)
        let prodid = try namedMatch(regex: expressions.prodid, name: "PRODID", data: data)
        var events: [VEVENT] = []
        let extractEvents = #"(BEGIN:VEVENT\n((.|\n)*?)END:VEVENT)+"#
        let regex = try NSRegularExpression(pattern: extractEvents, options: [])
        let nsrange = NSRange(data.startIndex..<data.endIndex,
                              in: data)
        regex.enumerateMatches(in: String(data),
                               options: [],
                               range: nsrange) { (match, _, stop) in
            guard let match = match else { return }
            
            let event = String(data[Range(match.range(at: 2), in: data)!])
            do {
                events.append(try parseEvent(event: event))
            } catch {
                print("Invalid Event")
            }
            
        }
        return VCALENDAR(events: events, PRODID: prodid!, VERSION: Double(version!)!)
    }
}
//@available(macOS 10.13, *)
private func parseEvent(event: String) throws -> VEVENT {
    let expressions = try Expressions()
    let UID = try namedMatch(regex: expressions.uid, name: "UID", data: event)
    let DTSTAMP = try namedMatch(regex: expressions.dtstamp, name: "DTSTAMP", data: event)
    let ORGANIZER = try namedMatch(regex: expressions.organizer, name: "ORGANIZER", data: event)
    let DTSTART = try namedMatch(regex: expressions.dtstart, name: "DTSTART", data: event)
    let DTEND = try namedMatch(regex: expressions.dtend, name: "DTEND", data: event)
    let SUMMARY = try namedMatch(regex: expressions.summary, name: "SUMMARY", data: event)
    let DESCRIPTION = try namedMatch(regex: expressions.description, name: "DESCRIPTION", data: event)?.replacingOccurrences(of: "\n ", with: "").replacingOccurrences(of: "\\n", with: "\n")
    return VEVENT(UID: UID!, DTSTAMP: DTSTAMP!, ORGANIZER: ORGANIZER, DTSTART: DTSTART!, DTEND: DTEND, SUMMARY: SUMMARY!, DESCRIPTION: DESCRIPTION)
}
//@available(macOS 10.13, *)
private func namedMatch(regex: NSRegularExpression, name: String, data: String) throws -> String? {
    let match = regex.firstMatch(in: data, options: [], range: NSRange(data.startIndex..<data.endIndex,
                                                                       in: data))
    if match == nil {
        return nil
    }
    let range = Range(match!.range(withName: name),in:data)
    if range == nil {
        return nil
    }
    return String(data[range!])
}
