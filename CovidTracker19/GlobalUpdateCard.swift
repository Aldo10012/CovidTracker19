//
//  GlobalUpdateCard.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct GlobalUpdateCard: View {
    @State var color: Color
    @State var topic: String
    @State var total: Int
    @State var today: Int
    
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            VStack(alignment: .leading, spacing: 5){
                Text("Total \(topic)")
                    .foregroundColor(Color(#colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.4509803922, alpha: 1)))
                Text("\(total)")
                    .font(Font.system(size: 23, weight: .bold))
                    .foregroundColor(self.color)
            }.padding(.leading, 15)
            
            VStack(alignment: .leading, spacing: 5){
                Text("Today")
                    .foregroundColor(Color(#colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.4509803922, alpha: 1)))
                Text("\(today)")
                    .font(Font.system(size: 23, weight: .bold))
                    .foregroundColor(self.color)
            }.padding(.leading, 15)
        }
        .frame(width: 150, height: 160, alignment: .leading)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(.black).opacity(0.15), radius: 8, x: 4, y: 8)
        
    }
}

struct GlobalUpdateCard_Previews: PreviewProvider {
    static var previews: some View {
        GlobalUpdateCard(color: .red, topic: "Deaths", total: 97621762, today: 3399)
    }
}
