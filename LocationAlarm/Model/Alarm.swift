//
//  Alarm.swift
//  LocationAlarm
//
//  Created by Jack Wong on 10/28/20.
//

import Foundation

struct Alarm: Identifiable {
    let id = UUID()
    var address: String
    var radius: String
    var isOn: Bool = true
    var repeatable: Bool = false
    var readAloud: Bool = false
    
    var readAloudContent: String?
}


