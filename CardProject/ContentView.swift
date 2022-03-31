//
//  ContentView.swift
//  CardProject
//
//  Created by Don wijesinghe on 3/30/22.
//



//Important Understanding: So when i create a tabview the elements i define next will be the tabs. so foreach gives me as many tabs as i want. if its a few id go with tabitem. and within those items i can define what i want to show. 
import SwiftUI

struct ContentView: View {
    var cardColor: Color {
        return Color(
            .sRGB,
            red: Double.random(in: 0..<1),
            green: Double.random(in: 0..<1),
            blue: Double.random(in: 0..<1),
            opacity: 1
        )
    }
    var body: some View {
        TabView{
            
                ForEach(1..<51){index in
                    GeometryReader{ geo in
                        ZStack(){
                            Rectangle().foregroundColor(cardColor).cornerRadius(15.0)
                            Image(systemName: "\(index).circle").resizable().padding().scaledToFit()
                            
                        }.frame(height: max(geo.size.height - 50, 100))
                }.padding()
            }
            
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
