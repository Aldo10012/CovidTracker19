//
//  StateCard.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct StateCard: View {
    @State var state: String
    @State var active: Int
    @State var deaths: Int
    @State var recovered: Int
    
    var body: some View {
        VStack {
            VStack(spacing: 5){
                HStack(){
                    Text(self.state)
                        .frame(alignment: .leading)
                        .font(Font.system(size: 17, weight: .medium))
                    Spacer()
                }.padding(.bottom, 10)
                
                HStack(){
                    Text("Active")
                    Spacer()
                    Text("\(active)")
                        .foregroundColor(.orange)
                }
                HStack(){
                    Text("Deaths")
                    Spacer()
                    Text("\(deaths)")
                        .foregroundColor(.red)
                }
                HStack(){
                    Text("Recovered")
                    Spacer()
                    Text("\(recovered)")
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
        StateCard(state: "California", active: 3623603, deaths: 55813, recovered: 1902529)
    }
}
