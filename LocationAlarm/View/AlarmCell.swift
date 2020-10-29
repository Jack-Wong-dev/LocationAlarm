//
//  AlarmCell.swift
//  LocationAlarm
//
//  Created by Jack Wong on 10/28/20.
//

import SwiftUI

struct AlarmCell: View {
    @ObservedObject var alarmVM: AlarmViewModel
    
    var body: some View {
        VStack {
            //TODO: MapKit View Here
            
            // Address
            Text(alarmVM.alarm.address)
            
            // Radius
            Text(alarmVM.alarm.radius)
            
            // Distance between current location and distance
            Text("You are -insert mile/meter - away.")
            
            // Active/Inactive toggle
            Toggle("", isOn: $alarmVM.isOn)
        }
        .padding()
    }
}

//struct AlarmCell_Previews: PreviewProvider {
//    static var previews: some View {
//        AlarmCell()
//    }
//}
