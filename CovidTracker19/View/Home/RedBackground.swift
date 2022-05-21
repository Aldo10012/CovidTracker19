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
            Background()
            
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
