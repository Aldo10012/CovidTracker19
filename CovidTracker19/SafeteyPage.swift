//
//  SafeteyPage.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct SafeteyPage: View {
    var symptomList: [Symptom] = SafetyLists().symptomList
    var preventionList: [Prevention] = SafetyLists().preventionList
    var ifSickList: [Prevention] = SafetyLists().ifSickList
    
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
                    
                    Header(text: "If You're Sick")
                        .padding(.leading, 30)
                        .padding(.bottom, 25)
                        .padding(.top, 50)
                    
                    ForEach(ifSickList) { method in
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
