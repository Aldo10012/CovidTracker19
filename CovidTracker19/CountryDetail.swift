//
//  CountryDetail.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/18/21.
//

import SwiftUI

struct CountryDetail: View {
    @State var country: String
    @State var lat: Double
    @State var long: Double
    @State var deaths: Int
    @State var todayDeaths: Int
    @State var recovered: Int
    @State var todayRecovered: Int
    @State var cases: Int
    @State var active: Int
    
    var body: some View {

        
        VStack(alignment: .leading){
            
            // this is where the map will go
            MapView( country: self.country,
                     lat: self.lat,   // N/S
                     long: self.long, // E/W
                     active: self.active
            )
                .frame(width: screen.width-40, height: cardGroupHeight)
                .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                .padding(.horizontal, 20)
            
            
            VStack(spacing: 10){
                
                CountryCard(bgColog: .orange,
                            topic1: "Total Cases", topic1Info: self.cases,
                            topic2: "Active", topic2Info: self.active)
                CountryCard(bgColog: .red,
                            topic1: "Total Deaths", topic1Info: self.deaths,
                            topic2: "Today", topic2Info: self.todayDeaths)
                CountryCard(bgColog: .green,
                            topic1: "Total Recovered", topic1Info: self.recovered,
                            topic2: "Today", topic2Info: self.todayRecovered)
                
                

            }.padding(.horizontal, 20)
            
            
        }.padding(.vertical, 10)
        .offset(y: 0)
    }
}

struct CountryDetail_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetail(
            country: "USA",
            lat: 38,
            long: -97,
            deaths: 550761,
            todayDeaths: 111,
            recovered: 22448224,
            todayRecovered: 22448224,
            cases: 30301478,
            active: 7302493)
    }
}

var cardGroupHeight = screen.height*0.35
var cardHeigh = (cardGroupHeight-20) / 3

struct CountryCard: View {
    @State var bgColog: Color
    @State var topic1: String
    @State var topic1Info: Int
    @State var topic2: String
    @State var topic2Info: Int
    
    var body: some View {
        VStack(spacing: 10){
            HStack(){
                Text(self.topic1)
                Spacer()
                Text(self.topic2)
            }.padding(.horizontal, 10)
            .foregroundColor(Color(#colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.4509803922, alpha: 1)))
            .font(Font.system(size: 17, weight: .medium))
            
            HStack(){
                Text("\(self.topic1Info)")
                Spacer()
                Text("\(self.topic2Info)")
            }.padding(.horizontal, 10)
            .foregroundColor(self.bgColog)
            .font(Font.system(size: 25, weight: .bold))
            
            
        }.frame(width: screen.width-40, height: cardHeigh)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(.black).opacity(0.15), radius: 8, x: 4, y: 8)
    }
}
