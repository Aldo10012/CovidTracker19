//
//  TestingData.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/17/21.
//

import SwiftUI

struct TestingData: View {
    @State var posts: [Post] = [ ]
    @State var globalData: GlobalData = GlobalData(
        active: 0,
        deaths: 1,
        todayDeaths: 2,
        recovered: 3,
        todayRecovered: 4
    )
    @State var stateData: [StateData] = []

    var body: some View {
//        List(posts) { post in
//            Text(post.title)
//        }
//        .onAppear {
//            Api().getPosts { (posts) in
//                self.posts = posts
//            }
//        }
        
        List(stateData) { state in
            Text(state.state)
        }
        .onAppear {
            Api().getStateData { (stateData) in
                self.stateData = stateData
            }
        }
        
        
        
//        List(stateData) { state in
//            Text(state.name)
//        }.onAppear {
//            Api.getStateData { (stateData) in
//                self.stateData = stateData
//            }
//        }
        
//        VStack(){
//            Text("GLOBAL").font(Font.system(size: 24, weight: .bold))
//            Text("Active: \(globalData.active)")
//            Text("deaths: \(globalData.deaths)")
//            Text("deaths today: \(globalData.todayDeaths)")
//            Text("recovered: \(globalData.recovered)")
//            Text("recovered today: \(globalData.todayRecovered)")
//        }
//        .onAppear{
//            
//            Api().getAllData { (globalData) in
//                self.globalData = globalData
//            }
//        }
        
//
    }
}

struct TestingData_Previews: PreviewProvider {
    static var previews: some View {
        TestingData()
    }
}
