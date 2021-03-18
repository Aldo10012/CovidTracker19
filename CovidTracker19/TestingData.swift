//
//  TestingData.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/17/21.
//

import SwiftUI

struct TestingData: View {
    @State var posts: [Post] = [ ]
    @State var globalData: GlobalData = GlobalData(
        active: 0,
        deaths: 1,
        todayDeaths: 2,
        recovered: 3,
        todayRecovered: 4
    )
    @State var stateData: [StateData] = []
    @State var countryData: [CountriesData] = []

    var body: some View {
//        List(posts) { post in
//            Text(post.title)
//        }
//        .onAppear {
//            Api().getPosts { (posts) in
//                self.posts = posts
//            }
//        }
        //====================//
        // TESTING STATE DATA //
        //====================//
//        List(stateData) { state in
//            Text(state.state)
//        }
//        .onAppear {
//            Api().getStateData { (stateData) in
//                self.stateData = stateData
//                for i in 0..<12{
//                    self.stateData.popLast()
//                }
//                self.stateData.remove(at: self.stateData.count-3)
//                //self.stateData.sorted { $0.state < $1.state }
//
//            }
//        }.frame(width: screen.width, height: screen.height)
        
        
        
        //=====================//
        // TESTING GLOBAL DATA //
        //=====================//
//        VStack(){
//            Text("GLOBAL").font(Font.system(size: 24, weight: .bold))
//            Text("Active: \(globalData.active)")
//            Text("deaths: \(globalData.deaths)")
//            Text("deaths today: \(globalData.todayDeaths)")
//            Text("recovered: \(globalData.recovered)")
//            Text("recovered today: \(globalData.todayRecovered)")
//        }
//        .onAppear{
//
//            Api().getAllData { (globalData) in
//                self.globalData = globalData
//            }
//        }
        
        
        //======================//
        // TESTING COUNTRY DATA //
        //======================//
        List(countryData) { country in
            VStack(alignment: .leading){
                Text(country.country).font(Font.system(size: 20, weight: .bold))
                
//                Text("Total Cases: \(country.cases)")
//                Text("Active: \(country.active)")
//                Text("Total Deaths: \(country.deaths)")
//                Text("Deaths Today: \(country.todayDeaths)")
//                Text("Total Recovered: \(country.recovered)")
//                Text("Recovered Today: \(country.todayRecovered)")
//                Text("Latitude: \(country.countryInfo.lat)")
//                Text("Longitude: \(country.countryInfo.long)")
                
                
            }.padding(.vertical, 10)
        }
        .onAppear {
            Api().getCountryData { (countryData) in
                self.countryData = countryData
            }
        }.frame(width: screen.width, height: screen.height)
    }
}

struct TestingData_Previews: PreviewProvider {
    static var previews: some View {
        TestingData()
    }
}
