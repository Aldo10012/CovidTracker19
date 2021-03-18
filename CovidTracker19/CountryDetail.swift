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
//        ZStack {
//            Circle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.purple)
//            Text("4")
//                .font(.system(size: 70, weight: .bold))
//                .foregroundColor(.white)
//        }
        
        VStack(alignment: .leading){
            Text("\(self.country)").font(Font.system(size: 20, weight: .bold))
            
                Text("Total Cases: \(self.cases)")
                Text("Active: \(self.active)")
                Text("Total Deaths: \(self.deaths)")
                Text("Deaths Today: \(self.todayDeaths)")
                Text("Total Recovered: \(self.recovered)")
                Text("Recovered Today: \(self.todayRecovered)")
                Text("Latitude: \(self.lat)")
                Text("Longitude: \(self.long)")
            
            
        }.padding(.vertical, 10)
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
