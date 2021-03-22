//
//  Header.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/22/21.
//

import SwiftUI

struct Header: View {
    @State var text: String
    
    var body: some View {
        Text(self.text)
            .frame(width: screen.width, alignment: .leading)
            .font(Font.system(size: 24, weight: .medium))
            .foregroundColor(Color(#colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)))
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(text: "Header")
    }
}
