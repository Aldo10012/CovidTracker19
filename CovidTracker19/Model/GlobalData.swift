//
//  GlobalData.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/17/21.
//

import SwiftUI

struct GlobalData: Codable, Identifiable {
    let id = UUID()
    var active: Int
    var deaths: Int
    var todayDeaths: Int
    var recovered: Int
    var todayRecovered: Int
}
