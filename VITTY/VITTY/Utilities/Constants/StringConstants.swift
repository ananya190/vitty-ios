//
//  StringConstants.swift
//  VITTY
//
//  Created by Ananya George on 12/22/21.
//

import Foundation

struct StringConstants {
    // MARK: SPLASH SCREEN CONSTANTS
    static let splashScreenHeader = [
        "Never Miss a Class!",
        "Get a sneak peek",
        "Upload once, view everywhere",
    ]
    static let splashScreenDescription = [
        "Notifications to remind you about your classes",
        "View your upcoming classes and timetable via the widget",
        "Instant sync across all of your devices via the app and extension",
    ]
    // MARK: FIREBASE CONSTANTS
    static let firestoreDays = [
        "sunday","monday", "tuesday", "wednesday", "thursday", "friday", "saturday",
    ]
    // MARK: HOME PAGE CONSTANTS
    static let daysOfTheWeek = [
        "Sun",
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat",
    ]
    // MARK: INSTRUCTIONS PAGE
    // dummy arrays
    static let instructionsHeaders = ["Account Details", "Setup Instructions"]
    static let accData = ["Name: ","Signed in with: ","Email: "]
    static let sampleData = ["Name: Ryan Ross","Email: blinkexists182@aol.com"]
    static let setupInstructions = [
        "1. Download the Chrome Extension from: https://dscv.it/vitty-extension", // make the link tappable
        "2. Log in with the same Google/Apple Account as shown above",
        "3. Upload a screenshot of your timetable",
        "4. Review it",
        "5. When done, click on Upload."
    ]
    static let setupFinalText = "BRAVO! That's it. You did it!"
    
    // MARK: CLASS DATA
    static let sampleClassDate = Classes(courseType: "Theory", courseCode: "MAT3004", courseName: "Applied Linear Algebra", location: "SJT112", slot: "A1", startTime: Date(), endTime: Date(timeIntervalSinceNow: 3600))
    
    // MARK: RANDOM STRINGS
    static let noClassQuotesOnline = [
        "Up for some Valorant Grind?",
        "Don't you have a quiz coming up?",
        "Finish your DAs!",
        "Read a book!",
        "Catch up on some sleep!"
    ]
    
    static let noClassQuotesOffline = [
        "Don't you have a quiz coming up?",
        "Finish your DAs!",
        "Chill and relax in hostel",
        "Let's chill at Foodys!",
        "Ready to run to Tarama?",
        "Do grocery shopping at Allmart"
    ]
    
    // MARK: NOTIFICATIONS
    static let notificationTitle = "Up next!"
}

extension StringConstants {
    // MARK: DUMMY DATA
    static let dummyClassArray = [
    Classes(courseType: "Theory", courseCode: "CSE1004", courseName: "Network and Communication", location: "SJT420", slot: "C2+TC2", startTime: Date(timeIntervalSince1970: 0), endTime: Date(timeIntervalSince1970: 2700)),
    Classes(courseType: "Lab", courseCode: "CSE2010", courseName: "Advanced C Programming", location: "MGB420", slot: "L11+L12", startTime: Date(timeIntervalSince1970: 3600), endTime: Date(timeIntervalSince1970: 6300)),
    Classes(courseType: "Theory", courseCode: "CSE1004", courseName: "Network and Communication", location: "SJT420", slot: "C2+TC2", startTime: Date(timeIntervalSince1970: 0), endTime: Date(timeIntervalSince1970: 2700)),
    Classes(courseType: "Lab", courseCode: "CSE2010", courseName: "Advanced C Programming", location: "MGB420", slot: "L11+L12", startTime: Date(timeIntervalSince1970: 3600), endTime: Date(timeIntervalSince1970:6300))
    ]
    
    // MARK: NAVIGATION
    static let VITMap = "Vellore+Institute+of+Technology,+Vellore+India"
    static let blocksMap = [
        "CDMM":"Centre+For+Disaster+Mitigation+And+Management",
        "SJT" : "SJT+Building+%2F+Silver+Jubilee+Towers",
        "MB" : "MB+-+Main+Building",
        "MGB" : "Mahatma+Gandhi+Block",
        "TT" : "Technology+Tower+-+TT",
        "SMV" : "SMV",
        "PLB" : "12.971272,79.166357",
        "CBMR" : "CBMR+block",
        "GDN" : "GDN"
    ]
    
    static let browserURL = "https://www.google.com/maps/dir/?api=1&destination="
}
