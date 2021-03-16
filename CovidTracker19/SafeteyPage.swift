//
//  SafeteyPage.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct SafeteyPage: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            Text("3")
                .font(.system(size: 70, weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct SafeteyPage_Previews: PreviewProvider {
    static var previews: some View {
        SafeteyPage()
    }
}
