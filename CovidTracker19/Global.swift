//
//  MapView.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct Global: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            Text("2")
                .font(.system(size: 70, weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct MapPage_Previews: PreviewProvider {
    static var previews: some View {
        Global()
    }
}
