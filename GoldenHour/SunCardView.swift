//
//  SunCardView.swift
//  GoldenHour
//
//  Created by Dhruv Shah on 2020-06-11.
//  Copyright © 2020 Dhruv Shah. All rights reserved.
//

import SwiftUI

struct SunCardView: View {
    
    let label: String
    let time: String
    let quality: String
    let percent: CGFloat
    var body: some View {
        
        
        ZStack{
            
            HStack{
                VStack{
                    HStack{
                        Text(label)
                        Spacer()
                    }
                    .padding()
                    .font(.system(size: 20, weight: .heavy, design: .default))
                    Spacer()
                    HStack{
                        Text(time)
                        Spacer()
                    }
                    .padding()
                    .font(.system(size: 20, weight: .semibold , design: .default))
                    .foregroundColor(.init(red: 0.5, green: 0.5, blue: 0.5))
                }.frame(width: 140, height: 170).cornerRadius(10)
                
                VStack{
                    Spacer()
                    Text("Quality Prediction")
                        .font(.system(size: 12, weight: .light , design: .default))
                    VStack {
                        HStack{
                            Text(quality)
                            Spacer()
                        }.padding(.horizontal, 20)
                            .padding(.top, 10)
                        ZStack{
                            ZStack{
                                Rectangle().foregroundColor(.init(red: 0.66, green: 0.66, blue: 0.66)).cornerRadius(5)
                                HStack {
                                    
                                    
                                    ZStack {
                                        Rectangle().frame(width: (percent + 5), height: 20).foregroundColor(.init(red: 0.86, green: 0.86, blue: 0.86)).cornerRadius(5)
                                        Text("\(Int(percent))%").font(.system(size: 10, weight: .light, design: .default))
                                        
                                    }
                                    Spacer()
                                }
                            }.frame(width: 100, height: 20)
                        }
                    }
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Share").foregroundColor(Color.black).font(.system(size: 12, weight: .light , design: .default))
                        }.frame(width: 60, height: 30).background(Color.white).cornerRadius(10)
                }.frame(width: 170, height: 170).padding(.bottom, 30).cornerRadius(20).background(Color(red: 1, green: 0.359375, blue: 0.359375))
            }
            Spacer()
        }
        .frame(width: 300, height: 170)
       // .border(Color.gray, width: 10)
        .background(Color.white)
        .cornerRadius(20)
        
    }
}



struct SunCardView_Previews: PreviewProvider {
    static var previews: some View {
        SunCardView(label: "Sunrise", time: "5:00AM", quality: "Poor", percent: 30)
    }
}
