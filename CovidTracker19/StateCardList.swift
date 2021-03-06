//
//  StateCardList.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/17/21.
//

import SwiftUI

struct StateCardList: View {
    @State var stateData: [StateData] = [
        StateData(state: "California", active: 0, deaths: 0, recovered: 0),
        StateData(state: "Texas", active: 0, deaths: 0, recovered: 0)
    ]
    
    var body: some View {
        VStack {
            //Text("\(stateData.count)")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(stateData) { state in
                        StateCard(stateData: StateData(
                                    state: state.state,
                                    active: state.active,
                                    deaths: state.deaths,
                                    recovered: state.recovered))
                    }
                    
                    
                }.padding(.horizontal, 45)
                .padding(.bottom, 15)
            }
        }.onAppear {
            Api().getStateData { (stateData) in
                print("\n\n\nTEST   t\n\n\n")
                self.stateData = stateData
                // removing US territories from data
                for _ in 0..<12{
                    self.stateData.popLast()
                }
                self.stateData.remove(at: self.stateData.count-3)
                self.stateData.sorted { $0.state < $1.state }
            }
        }
    }
}

struct StateCardList_Previews: PreviewProvider {
    static var previews: some View {
        StateCardList()
    }
}
