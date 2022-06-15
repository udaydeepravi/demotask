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
    Event(data: " ", tittle: "Daily work Meeting at anywhere", tittletwo: "meet.anywhere.co", timing: "11:30"),
    Event(data: "21 FIR", tittle: "Motivation Meeting at cococo", tittletwo: "www.anywhere.com", timing: "11:30"),
    Event(data: "22 SAT", tittle: "", tittletwo: "", timing: ""),
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
    
]

struct Allevents: Identifiable {
    var id = UUID().uuidString
    var title: String
    var titletwo: String
    var time : String
}

var event1 = Allevents(title: "Daily Dsm Meetin w/ seth hasself", titletwo: "meet.google.com", time: "11:30AM - 1:00PM")
var event2 = Allevents(title: "Daily work Meeting at anywhere", titletwo: "www.anywhere.com", time: "11:30AM - 1:00PM")
var event3 = Allevents(title: "Walk in Meeting at chennai", titletwo: "meet.google.com", time: "12:30PM - 02:00PM")



var eventone:[String:String] = ["title":"Motivation Meeting at cococo", "titletwo":"www.google.com", "time":"12:00PM 01:00PM"]
var eventtwo:[String:String] = ["title":"Daily Dsm Meetin w/ seth hasself", "titletwo":"www.anywhere.com", "time":"12:00PM 01:00PM"]
var eventhree:[String:String] = ["title":"Daily work Meeting at anywhere", "titletwo":"meet.google.com", "time":"12:00PM 01:00PM"]
