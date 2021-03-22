//
//  SymptomCardView.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/22/21.
//

import SwiftUI

struct Symptom: Identifiable {
    let id = UUID()
    var name: String
}


struct SymptomCardView: View {
    @State var symptom: String
    @State var img: String
    
    var body: some View {
        VStack(){
            Image(self.img)
                .resizable()
                .frame(width: screen.width*0.2, height: screen.width*0.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(self.symptom)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.red)
        }.frame(width: screen.width*0.3, height: screen.width*0.3, alignment: .center)
        .padding(5)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(.black).opacity(0.15), radius: 8, x: 4, y: 8)
    }
}

struct SymptomCardView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomCardView(symptom: "cough", img: "Cough")
    }
}
