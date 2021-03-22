//
//  PreventionCardView.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/22/21.
//

import SwiftUI

struct Prevention: Identifiable{
    let id = UUID()
    var img: String
    var method: String
    var info: String
}

struct PreventionCardView: View {
    @State var img: String
    @State var method: String
    @State var info: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(self.img)
                .resizable()
                .frame(width: screen.width*0.3, height: screen.width*0.3)
            VStack(alignment: .leading, spacing: 10){
                Text(self.method)
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.red)
                Text(self.info)
                    .font(.subheadline)
                    .fontWeight(.light)
                
            }
        }.padding(10)
        .frame(width: screen.width-30)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(.black).opacity(0.15), radius: 8, x: 4, y: 8)
    }
}

struct PreventionCardView_Previews: PreviewProvider {
    static var previews: some View {
        PreventionCardView(img: "Wear A Mask", method: "Wear a mask", info: "info")
    }
}
