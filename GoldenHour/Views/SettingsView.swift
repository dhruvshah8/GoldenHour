//
//  SettingsView.swift
//  GoldenHour
//
//  Created by Dhruv Shah on 2020-07-14.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//



import SwiftUI
import UserNotifications

struct SettingsView: View {
    
    @State var receive = false
    @State var notifcationAllowed = false
    @State var sunsetNotif = false
    @State var goldenNotif = false
    @State var number = 1
    @State var selection = 1
    @State var date = Date()
    @State var email = ""
    @State var submit = false
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $receive) {
                    Text("Recieve Notifications")
                }.onTapGesture {
                    //Request Permission
                    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                        if success {
                            print("All set!")
                        } else if let error = error {
                            print(error.localizedDescription)
                        }
                        
                        
                        //Schedule Notifcation
                        if self.notifcationAllowed == false{
                            self.notifcationAllowed = true
                            let center = UNUserNotificationCenter.current()
                            center.removeAllPendingNotificationRequests()
                            let content = UNMutableNotificationContent()
                            content.title = "🌅 Golden Hour 🌅"
                            content.subtitle = "Golden Hour in 20 Minutes"
                            content.sound = UNNotificationSound.default
                            
                            var dateComponents = DateComponents()
                            dateComponents.hour = 19
                            dateComponents.minute = 46
                            
                            
                            // show this notification at this time
                            let trigger = UNCalendarNotificationTrigger (dateMatching: dateComponents, repeats: true)
                            
                            // choose a random identifier
                            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                            
                            // add our notification request
                            UNUserNotificationCenter.current().add(request)
                            center.add(request)
                            
                        }else{
                            self.notifcationAllowed = false
                            let center = UNUserNotificationCenter.current()
                            center.removeAllPendingNotificationRequests()
                        }
                        print(self.notifcationAllowed)
                    }
                }
                
                Stepper(value: $number, in: 1...7) {
                    Text("\(number) Notification\(number > 1 ? "s" : "") per week")
                }
                Picker(selection: $selection, label: Text("Perfect Timing")) {
                    Text("Sunrise").tag(1)
                    Text("Golden Hour").tag(2)
                    Text("Sunset").tag(3)
                }
                DatePicker(selection: $date, label: {
                    Text("Date")
                })
                
                Section(header: Text("Email")) {
                    TextField("Your email: ", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: { self.submit.toggle() }) {
                        Text("Submit")
                    }
                    .alert(isPresented: $submit, content: {
                        Alert(title: Text("Thanks"), message: Text("Email: \(email)"))
                    })
                }
                
            }
        }
        .navigationBarTitle("Settings")
    }
    
    
}

#if DEBUG
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif



