//
//  StateCardList.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/17/21.
//

import SwiftUI

struct StateCardList: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0 ..< 50) { item in
                    StateCard(state: "California", active: 3623603, deaths: 55813, recovered: 1902529)
                }
                
            }.padding(.horizontal, 45)
            .padding(.bottom, 15)
        }
    }
}

struct StateCardList_Previews: PreviewProvider {
    static var previews: some View {
        StateCardList()
    }
}
