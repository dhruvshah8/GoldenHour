//
//  Times.swift
//  GoldenHour
//
//  Created by Dhruv Shah on 2020-06-08.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct Times: View {
    
    var dawn: String
    var dusk: String
    var gold: String
    var goldEnd: String
    var nautDawn: String
    var nautDusk: String
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Times").padding(.horizontal).font(.system(size: 20, weight: .semibold , design: .default))
                Spacer()
            }
            ZStack{
                // Color.gray
                
                
                VStack{
                    
                    TimesCardView(line1: "Dawn", line2: dawn, color1: Color.blue)
                    TimesCardView(line1: "Dusk", line2: dusk, color1: Color.red)
                    TimesCardView(line1: "Golden Hour", line2: gold, color1: Color.purple)
                    TimesCardView(line1: "Golden Hour End", line2: goldEnd, color1: Color.green)
                    TimesCardView(line1: "Nautical Dawn", line2: nautDawn, color1: Color.yellow)
                    TimesCardView(line1: "Nautical Dusk", line2: nautDusk, color1: Color.pink)
                    Spacer()
                    
                }
            }.cornerRadius(40).edgesIgnoringSafeArea(.bottom)
            
        }
        
        
    }
}

struct Times_Previews: PreviewProvider {
    static var previews: some View {
        Times(dawn: "1", dusk: "1", gold: "1", goldEnd: "1", nautDawn: "1", nautDusk: "1")
    }
}
