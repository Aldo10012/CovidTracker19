//
//  MapView.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct Global: View {
    @State var countryData: [CountriesData] = []
    
    
    var body: some View {
        NavigationView {
            List(countryData) { country in
                
                NavigationLink(destination:
                                CountryDetail(
                                    country: country.country,
                                    lat: country.countryInfo.lat,
                                    long: country.countryInfo.long,
                                    deaths: country.deaths,
                                    todayDeaths: country.todayDeaths,
                                    recovered: country.recovered,
                                    todayRecovered: country.todayRecovered,
                                    cases: country.cases,
                                    active: country.active) ) {
                    Text(country.country)
                        .font(Font.system(size: 20, weight: .medium))
                        .padding(.vertical, 10)
                }
            }
            .onAppear {
                Api().getCountryData { (countryData) in
                    self.countryData = countryData
                }
                
            }.frame(width: screen.width, height: screen.height)
            .navigationBarTitle(Text("Countries"))
            
            
        }
        
    }
}

struct MapPage_Previews: PreviewProvider {
    static var previews: some View {
        Global()
    }
}
