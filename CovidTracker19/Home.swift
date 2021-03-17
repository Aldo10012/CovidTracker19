//
//  ContentView.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct Home: View {
    @State var globalData: GlobalData = GlobalData(
        active: 0,
        deaths: 0,
        todayDeaths: 0,
        recovered: 0,
        todayRecovered: 0)
    
    
    
    var body: some View {
        ZStack {
            RedBackground()
            
            VStack(){
                // headings at top of page
                VStack{
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
                        
                        Text("\(globalData.active)")
                            .frame(width: screen.width, alignment: .leading)
                            .font(Font.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    }.padding(.leading, 45)
                    .padding(.bottom, 10)
                    
                    
                    // cards displaying deaths & recoveries
                    HStack(spacing: 15){
                        
                        GlobalUpdateCard(color: .red, topic: "Deaths",
                                         total: $globalData.deaths,
                                         today: $globalData.todayDeaths)

                        
                        GlobalUpdateCard(color: .green, topic: "Recovered",
                                         total: $globalData.recovered,
                                         today: $globalData.todayRecovered)
                    }.padding(.bottom, 30)
                    
                }
                .onAppear{
                    Api().getAllData { (globalData) in
                        self.globalData = globalData
                    }
//                    globalData.deaths = 100
                }
                
                
                
                // united states info
                Text("United States")
                    .frame(width: screen.width, alignment: .leading)
                    .padding(.leading, 45)
                    .font(Font.system(size: 24, weight: .medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)))
                    .padding(.bottom, 25)
                
                StateCardList()
                
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


