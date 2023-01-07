# iCalParser

This is a tool used to parse iCal files with swift

# Example
```swift
import iCalParser
let cal = try iCalParser.parseIcal(data: """
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//hacksw/handcal//NONSGML v1.0//EN
BEGIN:VEVENT
UID:uid1@example.com
DTSTAMP:19970714T170000Z
ORGANIZER;CN=John Doe:MAILTO:john.doe@example.com
DTSTART:19970714T170000Z
DTEND:19970715T035959Z
SUMMARY:Bastille Day Party
GEO:48.85299;2.36885
END:VEVENT
END:VCALENDAR
""")
// Prints "Bastille Day Party"
print(cal.events.first!.SUMMARY)
```