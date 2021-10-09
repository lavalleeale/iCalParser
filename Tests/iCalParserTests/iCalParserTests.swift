import XCTest
@testable import iCalParser

final class iCalParserTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual("Bastille Day Party",try iCalParser.parseIcal(data: """
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
""").events.first!.SUMMARY)
        XCTAssertEqual("Read and carefully annotate the article from class- \"A Weapon for Readers\"", (try iCalParser.parseIcal(data: """
BEGIN:VCALENDAR
VERSION:2.0
PRODID:icalendar-ruby
CALSCALE:GREGORIAN
NAME:ALL ASSIGNMENTS
X-WR-CALNAME:ALL ASSIGNMENTS
X-WR-TIMEZONE:UTC
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36187-83158-20210902
DTSTART;VALUE=DATE:20210902
DESCRIPTION:Read and carefully annotate the article from class- "A Weapon f
 or Readers"
SEQUENCE:329118068
SUMMARY:Skill Review: Annotation
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83120-20210903
DTSTART;VALUE=DATE:20210903
DESCRIPTION:The article will be handed out in class on Wednesday.
SEQUENCE:329118068
SUMMARY:Article "Reading Your Physics Textbook"
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36169-83873-20210903
DTSTART;VALUE=DATE:20210903
DESCRIPTION:Assignment Objectives\nIdentify the core values of software eng
 ineering\nAnalyze your own software engineering identity\n\nSoftware Engin
 eering Characteristics (via email)\nWhich of the software engineering char
 acteristics is your strongest?\nWhich one has the most room for you to gro
 w? Why?
SEQUENCE:329118068
SUMMARY:Software Engineering Characteristics
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36205-83005-20210903
DTSTART;VALUE=DATE:20210903
DESCRIPTION:Unless otherwise noted\\, all readings are in the main textbook:
  Cole and Symes Western Civilizations\\, Volume A.  (C&S: page numbers)\n\n
 All readings are due on the date noted and must be completed before coming
  to class that day.  Reading Notes are required and may be used in quizzes
 .  The notes need to be a translation of the most important points in your
  readings into your own words.  They also should represent your own work.
SEQUENCE:329118068
SUMMARY:C&S: 3-8
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-83171-20210903
DTSTART;VALUE=DATE:20210903
DESCRIPTION:p106: 1-12 (on paper... bring to class\\, do not upload to Googl
 e Classroom unless you will not be present)
SEQUENCE:329118068
SUMMARY:The "Basic" Graphs
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83250-20210903
DTSTART;VALUE=DATE:20210903
SEQUENCE:329118068
SUMMARY:Read Openstax - College Physics for AP Courses - Section 1.3
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-83351-20210907
DTSTART;VALUE=DATE:20210907
DESCRIPTION:p107: 46\\, 47\\, 49\\, 51
SEQUENCE:329118068
SUMMARY:Piecewise Functions!
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83391-20210907
DTSTART;VALUE=DATE:20210907
DESCRIPTION:Please see your email for detailed instructions!
SEQUENCE:329118068
SUMMARY:Purchase textbook and register on VHL
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83411-20210907
DTSTART;VALUE=DATE:20210907
DESCRIPTION:Join our QUIZLET CLASS:  https://quizlet.com/join/ZSPn8pGR6\n\n
 (I won't be able to see your progress unless you join our class)\n\nPlease
  start "Learn mode" (15 minutes)
SEQUENCE:329118068
SUMMARY:Quizlet
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36187-83163-20210907
DTSTART;VALUE=DATE:20210907
DESCRIPTION:See classroom for assignment directions and rubric\\; approximat
 ely 1 page 1984 response typed.
SEQUENCE:329118068
SUMMARY:1984: Summer Reading Response
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36169-83878-20210908
DTSTART;VALUE=DATE:20210908
DESCRIPTION:U1L3 - Calling Methods (in class quiz)
SEQUENCE:329118068
SUMMARY:Calling Methods Quiz 1
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36205-83006-20210908
DTSTART;VALUE=DATE:20210908
DESCRIPTION:read and take notes\\, be prepared for in-class discussion and/o
 r assessment.
SEQUENCE:329118068
SUMMARY:C&S: 8-10 Building Blocks...
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36205-83008-20210909
DTSTART;VALUE=DATE:20210909
DESCRIPTION:read and take notes\\, be prepared for in-class discussion and/o
 r assessment.
SEQUENCE:329118068
SUMMARY:C&S: 11-16
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83451-20210909
DTSTART;VALUE=DATE:20210909
DESCRIPTION:This sheet was distributed in class and we will discuss example
 s to help prepare for it during class on Wednesday\\, Sept. 8th.
SEQUENCE:329118068
SUMMARY:WS - Uncertainty and Propagation of Error
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-83512-20210909
DTSTART;VALUE=DATE:20210909
DESCRIPTION:p116-118: 3\\, 5\\, 13\\, 16\\, 51 (51 is challenging! Give it your
  best shot.)
SEQUENCE:329118068
SUMMARY:Function Composition
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83572-20210909
DTSTART;VALUE=DATE:20210909
DESCRIPTION:Completar "contextos" pg. 7 en tu cuaderno (Viaje a marte)
SEQUENCE:329118068
SUMMARY:Hacer # 3 pg. 8
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36187-83648-20210909
DTSTART;VALUE=DATE:20210909
SEQUENCE:329118068
SUMMARY:Cornell Notes: In class/HW
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83686-20210910
DTSTART;VALUE=DATE:20210910
DESCRIPTION:Be sure to turn in your "lista 1" that we were working on in cl
 ass!
SEQUENCE:329118068
SUMMARY:IN CLASS WORK
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83687-20210910
DTSTART;VALUE=DATE:20210910
DESCRIPTION:En clase vamos a hacerlo :-)
SEQUENCE:329118068
SUMMARY:El cuco - the portrait of a boogeyman!
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83816-20210910
DTSTART;VALUE=DATE:20210910
DESCRIPTION:Rolling Due date.  If not finished\\, complete this during the t
 ime in a class designated for working on "loose ends."
SEQUENCE:329118068
SUMMARY:Lab - Average Velocity of Pull-Back Car
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83604-20210910
DTSTART;VALUE=DATE:20210910
SEQUENCE:329118068
SUMMARY:Read 2.1 - 2.3 in (Openstax) College Physics for AP Courses
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83605-20210910
DTSTART;VALUE=DATE:20210910
DESCRIPTION:This will be distributed in class.  If you are in quarantine\\,
 you can find it in Google Classroom.
SEQUENCE:329118068
SUMMARY:WS - Displacement\\, Speed\\, and Velocity A
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83608-20210910
DTSTART;VALUE=DATE:20210910
DESCRIPTION:This will be distributed in class.  If you are in quarantine\\,
 you can find it in Google Classroom.
SEQUENCE:329118068
SUMMARY:WS - Average Speed and Average Velocity B
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-83626-20210910
DTSTART;VALUE=DATE:20210910
DESCRIPTION:p126:\n13\\, 15\\, 17\\, 19\\, 23-26\\, 32 (#32 is fun with fraction
 s!)
SEQUENCE:329118068
SUMMARY:Inverse Functions
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36205-83009-20210910
DTSTART;VALUE=DATE:20210910
DESCRIPTION:read and take notes\\, be prepared for in-class discussion and/o
 r assessment.
SEQUENCE:329118068
SUMMARY:C&S: 16-21
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36205-83010-20210913
DTSTART;VALUE=DATE:20210913
DESCRIPTION:read and take notes\\, be prepared for in-class discussion and/o
 r assessment.
SEQUENCE:329118068
SUMMARY:C&S: 22-29 (up to Egyptian Culture and Society)
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83697-20210913
DTSTART;VALUE=DATE:20210913
DESCRIPTION:Please take 30 minutes this weekend to work on loose ends.  Thi
 s could include labs and activities (if you have all of the data and don't
  need to discuss them with your partner(s)).
SEQUENCE:329118068
SUMMARY:Work on Loose Ends for 30 min
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-83723-20210913
DTSTART;VALUE=DATE:20210913
DESCRIPTION:p136-137: 1-7 odd\\, 17\\, 35-38\\, 51
SEQUENCE:329118068
SUMMARY:Transformations
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83746-20210913
DTSTART;VALUE=DATE:20210913
DESCRIPTION:15 mins of learn mode please
SEQUENCE:329118068
SUMMARY:Quizlet - EL CUCO
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36187-83770-20210913
DTSTART;VALUE=DATE:20210913
DESCRIPTION:See details on classroom
SEQUENCE:329118068
SUMMARY:If this goes on creative response
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-83810-20210914
DTSTART;VALUE=DATE:20210914
DESCRIPTION:p193: 9-12\\, 38\\, 53 (no need to graph)\\, 73\\, 74
SEQUENCE:329118068
SUMMARY:Polynomials!
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83912-20210914
DTSTART;VALUE=DATE:20210914
DESCRIPTION:Check SUPERSITE to practice with the vocab for "Celebración de
  la fantasia"!
SEQUENCE:329118068
SUMMARY:VHL - Vocab activities
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36187-83994-20210914
DTSTART;VALUE=DATE:20210914
SEQUENCE:329118068
SUMMARY:Hero's journey: class part/practice
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83805-20210915
DTSTART;VALUE=DATE:20210915
SEQUENCE:329118068
SUMMARY:Read Openstax - College Physics for AP Courses section 2.8
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36205-83104-20210915
DTSTART;VALUE=DATE:20210915
DESCRIPTION:Read and take notes\\, be prepared for in-class assessment and/o
 r discussions.
SEQUENCE:329118068
SUMMARY:C&S 29-37 (up to end of Chapter 1)
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36205-83106-20210916
DTSTART;VALUE=DATE:20210916
DESCRIPTION:Bring all materials to class for Ch. 1 review.
SEQUENCE:329118068
SUMMARY:Ch. 1 Review
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-83934-20210916
DTSTART;VALUE=DATE:20210916
DESCRIPTION:This sheet will be distributed in class.
SEQUENCE:329118068
SUMMARY:WS - Position Graphs A - modified
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-83813-20210916
DTSTART;VALUE=DATE:20210916
DESCRIPTION:p205: (No Calculator) 7\\, 17\\, 25\\, 26
SEQUENCE:329118068
SUMMARY:Polynomials Part 2
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83998-20210916
DTSTART;VALUE=DATE:20210916
DESCRIPTION:1.  Terminar "comprensión" pg. \n\n2.  Escribir en tu cuaderno
 :  \n\n¿Cómo son esos niños? ¿Tienen juguetes?\nSi no tienen juguetes\
 , ¿cómo juegan?\nEl último niño es cómico. ¿Cuál es el humor?\n¿Cu
 ál es el mensaje principal del breve artículo?
SEQUENCE:329118068
SUMMARY:La celebración de la fantasia
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-84049-20210917
DTSTART;VALUE=DATE:20210917
DESCRIPTION:This sheet will be distributed in class.
SEQUENCE:329118068
SUMMARY:WS - P-t and V-t Graphs B
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36187-84196-20210917
DTSTART;VALUE=DATE:20210917
SEQUENCE:329118068
SUMMARY:Green Knight part 1 annotations
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36418-83945-20210917
DTSTART;VALUE=DATE:20210917
DESCRIPTION:In class on Friday\\, you'll do some short answer writing.  Plea
 se be ready and prepared to describe\\, summarize and give your analysis of
  the some of following question(s):\n\n  ¿Cuáles son los mensajes princi
 pales de las siguientes fuentes:  Viaje a Marte\\, El Cuco\\, La celebració
 n de la fantasia\\, La Llorona\n\n¿Qué podemos aprender de cada fuente?\n
 \n¿Cómo refleja el tema "fantasía vs. realidad" -- el tema del capítul
 o?\n\n¿Cuáles son algunos aspectos culturales que se demuestran en las f
 uentes?\n\nYou'll be graded partially on good grammar and partially on con
 tent and ideas.
SEQUENCE:329118068
SUMMARY:In class - Written reflection
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-83726-20210917
DTSTART;VALUE=DATE:20210917
DESCRIPTION:Quiz on the basics so far.
SEQUENCE:329118068
SUMMARY:Quiz!
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36205-83107-20210917
DTSTART;VALUE=DATE:20210917
DESCRIPTION:Test on Ch. 1 materials
SEQUENCE:329118068
SUMMARY:Ch. 1 Test
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36103-84107-20210924
DTSTART;VALUE=DATE:20210924
DESCRIPTION:If you have not yet submitted a math confessional form\\, please
  do so by Friday 24th! (It should be in an email from me linking to the fo
 rm.)
SEQUENCE:329118068
SUMMARY:Math Confessional!
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36187-84193-20210927
DTSTART;VALUE=DATE:20210927
SEQUENCE:329118068
SUMMARY:No HW for ex. ed week
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20210919T200318Z
UID:36611-84111-20211001
DTSTART;VALUE=DATE:20211001
SEQUENCE:329118068
SUMMARY:Test - Constant and Uniformly Accelerated Motion
END:VEVENT
END:VCALENDAR
""")).events.first?.DESCRIPTION)
    }
}
