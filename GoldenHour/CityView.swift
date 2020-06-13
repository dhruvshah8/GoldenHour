//
//  CityView.swift
//  GoldenHour
//
//  Created by Dhruv Shah on 2020-06-12.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct CityView: View {
    var body: some View {
    
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Text("Today").font(.system(size: 20, weight: .medium , design: .default)).foregroundColor(Color.white)
                Text("Toronto").font(.system(size: 30, weight: .bold , design: .default)).foregroundColor(Color.white).padding()
                Spacer()
            }.frame(width: 390, alignment: .top).background(Color(red: 1, green: 0.359375, blue: 0.359375)).cornerRadius(10).edgesIgnoringSafeArea(.top)
            
        }
    }


struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
