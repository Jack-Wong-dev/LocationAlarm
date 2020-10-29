//
//  AlarmsViewModel.swift
//  LocationAlarm
//
//  Created by Jack Wong on 10/28/20.
//

import Foundation
import Combine

class LocationAlarmsViewModel: ObservableObject {
   @Published var alarmViewModels = [AlarmViewModel]()
    
    init() {
        #if DEBUG
        alarmViewModels = [
            AlarmViewModel(alarm: Alarm(address: "47-51 Austell Place", radius: "200m")),
            AlarmViewModel(alarm: Alarm(address: "625 W57th St", radius: "500m", isOn: false))
        ]
        #endif
    }
    
    func getAlarms() {
        
    }
    
    func createAlarm() {
        
    }
    
    func updateAlarm() {
        
    }
    
    func deleteAlarm() {
        
    }
}

