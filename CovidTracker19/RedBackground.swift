//
//  RedBackground.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct RedBackground: View {
    var body: some View {
        let redHeight: CGFloat = 230
        
        ZStack {
            Rectangle()
                .frame(width: screen.width, height: .infinity)
                .foregroundColor(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                Rectangle()
                    .frame(width: screen.width, height: redHeight)
                    .foregroundColor(Color(UIColor(.appRed)))
                    .padding(.bottom, 0)

                Spacer()
            }.ignoresSafeArea()
        }
    }
}

struct RedBackground_Previews: PreviewProvider {
    static var previews: some View {
        RedBackground()
    }
}
