//
//  CountryInfo.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 5/20/22.
//

import Foundation

struct CountryInfo: Codable, Identifiable {
    let id = UUID()
    var lat: Double
    var long: Double
}
