//
//  StateData.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 5/20/22.
//

import Foundation

struct StateData: Codable, Identifiable {
    let id = UUID()
    var state: String
    var active: Int
    var deaths: Int
    var recovered: Int
}
