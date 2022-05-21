//
//  StateCard.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct StateCard: View {
    
    var stateData: StateData
    
    var body: some View {
        VStack {
            VStack(spacing: 5){
                HStack(){
                    Text(self.stateData.state)
                        .frame(alignment: .leading)
                        .font(Font.system(size: 17, weight: .medium))
                    Spacer()
                }.padding(.bottom, 10)
                
                HStack(){
                    Text("Active")
                    Spacer()
                    Text("\(self.stateData.active)")
                        .foregroundColor(.orange)
                }
                HStack(){
                    Text("Deaths")
                    Spacer()
                    Text("\(self.stateData.deaths)")
                        .foregroundColor(.red)
                }
                HStack(){
                    Text("Recovered")
                    Spacer()
                    Text("\(self.stateData.recovered)")
                        .foregroundColor(.green)
                }
            }.padding(.horizontal, 15)
            .font(Font.system(size: 17, weight: .light))
        }.frame(width: screen.width/5*3, height: 125, alignment: .center)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(.black).opacity(0.15), radius: 8, x: 4, y: 8)
    }
}

struct StateCard_Previews: PreviewProvider {
    static var previews: some View {
        StateCard(stateData: StateData(state: "California", active: 3623603, deaths: 55813, recovered: 1902529))
    }
}
