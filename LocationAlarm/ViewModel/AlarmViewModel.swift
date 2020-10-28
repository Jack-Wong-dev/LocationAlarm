//
//  AlarmViewModel.swift
//  LocationAlarm
//
//  Created by Jack Wong on 10/28/20.
//

import SwiftUI
import Combine

class AlarmViewModel: ObservableObject, Identifiable {
    var id = UUID()
    
    @Published var alarm: Alarm
    
    private var cancelleables = Set<AnyCancellable>()
    
    init(alarm: Alarm) {
        self.alarm = alarm
    }
}

