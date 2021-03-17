//
//  ContentView.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            Global()
                .tabItem{
                    Image(systemName: "globe")
                    Text("World Wide")
                }
            SafeteyPage()
                .tabItem{
                    Image(systemName: "cross.case")
                    Text("Safetey")
                }
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

var screen = UIScreen.main.bounds
