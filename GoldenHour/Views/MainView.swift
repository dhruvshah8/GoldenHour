//
//  MainView.swift
//  GoldenHour
//
//  Created by Dhruv Shah on 2020-06-08.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI


struct MainView: View {
    
    @ObservedObject var locationManager = LocationManager()
    
    var userLatitude: Double {
        return (locationManager.lastLocation?.coordinate.latitude ?? 0)
    }
    var userLongitude: Double {
        return locationManager.lastLocation?.coordinate.longitude ?? 0
    }
    
    let networkManager = NetworkManager()
    
    var data: (String,String, String, String, String, String){
        return (networkManager.fetch(lat: (userLatitude), long: (userLongitude)))
    }
    
 
    var body: some View {
        
        ZStack{
        VStack{
            CityView().edgesIgnoringSafeArea(.top).frame(height: 90)
            
            ZStack {
                ScrollView{
                    
                    SunView()
                    Times(dawn: data.0, dusk: data.1, gold: data.2, goldEnd: data.3, nautDawn: data.4, nautDusk: data.5)
                    
                    
                }.padding()
                
                }.background(Color(red: 0.9453125, green: 0.96484375, blue: 0.96484375)).cornerRadius(40)
                .edgesIgnoringSafeArea(.bottom).frame(alignment: .top)
        }
        }.background((Color(red: 1, green: 0.359375, blue: 0.359375)))
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
