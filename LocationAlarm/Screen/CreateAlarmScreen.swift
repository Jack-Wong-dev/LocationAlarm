//
//  CreateAlarmScreen.swift
//  LocationAlarm
//
//  Created by Jack Wong on 10/28/20.
//

import SwiftUI

struct CreateAlarmScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var address = ""
    @State private var radius: Double = 500.0
    
    var body: some View {
        NavigationView {
            ScrollView {
               content
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Cancel")
                    })
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Text("Submit")
                    })
                }
            })
        }
    }
    
    var content: some View {
        VStack {
            // TODO: Map View goes here
            
            // Search bar to search for location
            TextField("Search for location", text: $address)
            
            // Set Region's Radius
//            TextField("radius", value: $radius, formatter: .init())
//            Slider(value: $radius)
            
            // Segmented Control to toggle between meters / miles
        }
    }
}

struct CreateAlarmScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreateAlarmScreen()
    }
}
