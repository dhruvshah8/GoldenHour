//
//  SunView.swift
//  GoldenHour
//
//  Created by Dhruv Shah on 2020-06-11.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct SunView: View {
    
    let labels = ["Sunrise", "Sunset"]
    let time = ["6:00 AM", "9:00 PM"]
    let quality = ["Poor","Good"]
    let percent = [30, 74]
    var index = [0,1]
    
    var body: some View {
        VStack{
            HStack {
                Text("Predictions").padding(.horizontal).font(.system(size: 20, weight: .semibold , design: .default))
                Spacer()
            }
            
                ScrollView(.horizontal){
                    
                    HStack{
                        Spacer()
                        SunCardView(label: "Sunrise", time: "5:00AM", quality: "Poor", percent: 30)
                        
                        SunCardView(label: "Sunset", time: "9:00PM", quality: "Good", percent: 74)
                        Spacer()
                    }
                }
                
            }
        }

    
}


struct SunView_Previews: PreviewProvider {
    static var previews: some View {
        SunView()
    }
}

