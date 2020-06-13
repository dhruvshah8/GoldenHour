//
//  TimesCardView.swift
//  GoldenHour
//
//  Created by Dhruv Shah on 2020-06-08.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct TimesCardView: View {
    
    var line1: String
    var line2: String
    var color1: Color
    
    var body: some View {
        
        
        HStack {
            Circle().frame(width: 15).padding(.horizontal, 10).foregroundColor(color1)
            Text(line1)
            Spacer()
            HStack {
                Spacer()
                Text(line2)
            }.padding(.trailing, 15)
            Spacer()
        }
      
        .frame(height: 30)
        .foregroundColor(Color.black)
            .background(Color.white)
        .cornerRadius(13)
        .padding(.horizontal)
        
    }
}

struct TimesCardView_Previews: PreviewProvider {
    static var previews: some View {
        TimesCardView(line1: "1", line2: "2", color1: Color(red: 1, green: 1, blue: 1)).background(Color.black)
    }
}
