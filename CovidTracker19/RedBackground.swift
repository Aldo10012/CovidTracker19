//
//  RedBackground.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct RedBackground: View {
    var body: some View {
        VStack(spacing: 0){
            Rectangle()
                .frame(width: screen.width, height: 230)
                .foregroundColor(.red)
            Spacer()
        }.ignoresSafeArea()
    }
}

struct RedBackground_Previews: PreviewProvider {
    static var previews: some View {
        RedBackground()
    }
}
