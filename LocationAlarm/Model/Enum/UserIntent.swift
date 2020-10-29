//
//  UserIntent.swift
//  LocationAlarm
//
//  Created by Jack Wong on 10/28/20.
//

import Foundation

enum UserIntent: String, Identifiable{
    var id: String {
        self.rawValue
    }
    case create
    case update
}
