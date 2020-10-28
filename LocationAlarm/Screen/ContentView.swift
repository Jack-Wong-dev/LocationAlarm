//
//  ContentView.swift
//  LocationAlarm
//
//  Created by Jack Wong on 10/28/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = LocationAlarmsViewModel()

    var body: some View {
        NavigationView {
            List(vm.allAlarms) { alarm in
                VStack {
                    Text(alarm.address)
                    Text(alarm.radius)
                }
            }
            .navigationTitle("Location Alarm")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
