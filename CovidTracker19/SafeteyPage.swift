//
//  SafeteyPage.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct SafeteyPage: View {
    var drImgHeight: CGFloat = CGFloat(230)*0.75
    var symptomList: [Symptom] = [
        Symptom(name: "Headache"),
        Symptom(name: "Cough"),
        Symptom(name: "Fever"),
        Symptom(name: "Sore Throat")
    ]
    var preventionList: [Prevention] = [
        Prevention(img: "Wear A Mask", method: "Wear s mask", info: "some information will go here about how to preventthe spread and how it works"),
        Prevention(img: "Wash Your Hands", method: "Wash your hands", info: "some information will go here about how to preventthe spread and how it works"),
        Prevention(img: "Hand Sanitizer", method: "Use hand sanitizer", info: "some information will go here about how to preventthe spread and how it works"),
        Prevention(img: "Social Distance", method: "Social distancing", info: "some information will go here about how to preventthe spread and how it works")
    ]
    
    var body: some View {
        ZStack {
            Background()
            
            NavigationView {
                ScrollView{
                    Header(text: "Symptoms")
                        .padding(.top, 50)
                        .padding(.leading, 30)
                        .padding(.bottom, 30)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20){
                            ForEach(symptomList) { symptom in
                                SymptomCardView(symptom: symptom.name, img: symptom.name)
                            }
                        }.padding(.horizontal, 40)
                        .padding(.bottom, 50)
                    }
                    
                    Header(text: "Prevention")
                        .padding(.leading, 30)
                        .padding(.bottom, 25)
                    
                    ForEach(preventionList) { method in
                        PreventionCardView(img: method.img, method: method.method, info: method.info)
                    }
                    
                }.navigationBarTitle("Get to know Covid-19")
                .navigationBarColor(backgroundColor: UIColor(.appRed), tintColor: .white)
                
            }
        }
        
        
    }
}

struct SafeteyPage_Previews: PreviewProvider {
    static var previews: some View {
        SafeteyPage()
    }
}

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


struct Header: View {
    @State var text: String
    
    var body: some View {
        Text(self.text)
            .frame(width: screen.width, alignment: .leading)
            .font(Font.system(size: 24, weight: .medium))
            .foregroundColor(Color(#colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)))
        
    }
}

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
