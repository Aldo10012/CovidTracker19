//
//  ContentView.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            RedBackground()
            
            VStack(){
                // headings at top of page
                VStack(){
                    Text("Todays News")
                        .frame(width: screen.width, alignment: .leading)
                        .font(Font.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 25)
                    
                    
                    Text("Total Active Cases")
                        .frame(width: screen.width, alignment: .leading)
                        .font(Font.system(size: 17, weight: .light))
                        .foregroundColor(.white)
                    
                    Text("120642910")
                        .frame(width: screen.width, alignment: .leading)
                        .font(Font.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                }.padding(.leading, 45)
                .padding(.bottom, 10)
                
                // cards displaying deaths & recoveries
                HStack(spacing: 15){
                    GlobalUpdateCard(color: .red, topic: "Deaths", total: 2668606, today: 3399)
                    GlobalUpdateCard(color: .green, topic: "Recovered", total: 97621762, today: 225213)
                }.padding(.bottom, 30)
                
                // united states info
                Text("United States")
                    .frame(width: screen.width, alignment: .leading)
                    .padding(.leading, 45)
                    .font(Font.system(size: 24, weight: .medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)))
                    .padding(.bottom, 25)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0 ..< 50) { item in
                            StateCard(state: "California", active: 3623603, deaths: 55813, recovered: 1902529)
                        }
                        
                    }.padding(.horizontal, 45)
                    .padding(.bottom, 15)
                }
                
                Spacer()
            }
            
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


