//
//  SafeteyPage.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct SafeteyPage: View {
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
