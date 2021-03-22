//
//  Background.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/19/21.
//

import SwiftUI

struct Background: View {
    var body: some View {
        Rectangle()
            //.frame(width: screen.width, height: .infinity)
            .foregroundColor(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
//            .foregroundColor(.red)
//            .ignoresSafeArea()
            .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
