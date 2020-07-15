//
//  ContentView.swift
//  GoldenHour
//
//  Created by Dhruv Shah on 2020-06-08.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            MainView()
                .tabItem {
                    VStack {
                        Image(systemName: "sun.haze.fill").font(.system(size: 26))
                    }
            }
            .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                          Image(systemName: "bell.fill").font(.system(size: 26)) //or use gear - settings 
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

