//
//  CountriesData.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 5/20/22.
//

import Foundation

struct CountriesData: Codable, Identifiable {
    let id = UUID()
    var country: String
    var countryInfo: CountryInfo
    var deaths: Int
    var todayDeaths: Int
    var recovered: Int
    var todayRecovered: Int
    var cases: Int
    var active: Int
}
