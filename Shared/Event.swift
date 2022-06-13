//
//  Event.swift
//  demotask
//
//  Created by Udaydeep on 07/06/22.
//

import Foundation
import SwiftUI

//Sample Model and Data..

let colors: [Color] = [.green,.blue,.orange,.pink, .cyan, .gray, .black]

struct Event: Identifiable {
    var id = UUID().uuidString
    var data: String
    var tittle: String
    var tittletwo: String
    var timing: String
    var color = colors.randomElement() ?? .red
}

var events: [Event] = [
    Event(data: "20 THU", tittle: "Daily Dsm Meetin w/ seth hasself", tittletwo: "meet.google.com", timing: "11:30"),
    Event(data: " ", tittle: "Event and call with Modi", tittletwo: "anywhere.co", timing: "11:30"),
    Event(data: " ", tittle: "Daily work Meeting at anywhere", tittletwo: "meet.anywhere.co", timing: "11:30")
]

var events2: [Event] = [
    Event(data: "21 FIR", tittle: "Motivation Meeting at cococo", tittletwo: "www.anywhere.com", timing: "11:30"),
    Event(data: "22 SAT", tittle: "John with araya Meeting mark", tittletwo: "meet.google.com", timing: "11:30"),
    Event(data: "23 SUN", tittle: "Walk in Meeting at chennai", tittletwo: "www.anywhere.com", timing: "11:30"),
    Event(data: "24 MON", tittle: "toto Meeting at america", tittletwo: "meet.google.com", timing: "11:30")
]


struct Eventpass: Identifiable {
    var id = UUID().uuidString
    var tittle: String
    var tittletwo: String
    var timing: String
}

var passevent: [Eventpass] = [
    
    Eventpass(tittle: "Motivation Meeting at cococo", tittletwo: "Motivation Meeting at cococo", timing: "11:30AM - 1:00PM")
    //    Eventpass(tittle: "Motivation Meeting at cococo", tittletwo: "Motivation Meeting at cococo", timing: "11:30"),
    //    Eventpass(tittle: "Motivation Meeting at cococo", tittletwo: "Motivation Meeting at cococo", timing: "11:30"),
    //    Eventpass(tittle: "Motivation Meeting at cococo", tittletwo: "Motivation Meeting at cococo", timing: "11:30")
    
]




