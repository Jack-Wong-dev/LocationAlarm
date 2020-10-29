//
//  ContentView.swift
//  LocationAlarm
//
//  Created by Jack Wong on 10/28/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = LocationAlarmsViewModel()
    @State private var intention: UserIntent?
    @State private var showInfo = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                content
                fab
            }
            .navigationTitle("Location Alarm")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showInfo = true
                    }, label: {
                        Image(systemName: "info.circle")
                    })
                }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .alert(isPresented: $showInfo) {
            Alert(title: Text("Location Alarm"),
                  message: Text("Location-based Alarm."),
                  dismissButton: .default(Text("Dismiss"))
            )
        }
        .fullScreenCover(item: $intention) { intent  in
            switch intent {
            case .create:
                CreateAlarmScreen()
            case .update:
                EmptyView()
            }
        }
    }
    
    var content: some View {
        List {
            ForEach(vm.alarmViewModels) { alarmVM in
                AlarmCell(alarmVM: alarmVM)
            }
            .onDelete(perform: { indexSet in
                
            })
        }
    }
    
    var fab: some View {
        Button(action: {
            intention = .create
        }, label: {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .frame(width: 56, height: 56)
            //                        .shadow(color: Color.primary, radius: 5, x: 5, y: 5)
        })
        //        .buttonStyle(FABStyle())
        .padding(.horizontal)
    }
    
    private func delete() {
        //TODO: Implement Deletion Logic
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
