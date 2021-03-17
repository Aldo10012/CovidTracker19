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
        todayRecovered: 4)

    var body: some View {
//        List(posts) { post in
//            Text(post.title)
//        }
//        .onAppear {
//            Api().getPosts { (posts) in
//                self.posts = posts
//            }
//        }
        
        VStack(){
            Text("Active: \(globalData.active)")
            Text("deaths: \(globalData.deaths)")
            Text("deaths today: \(globalData.todayDeaths)")
            Text("recovered: \(globalData.recovered)")
            Text("recovered today: \(globalData.todayRecovered)")
        }
        .onAppear{
            print(globalData.active = 7)
            Api().getAllData { (globalData) in
                self.globalData = globalData
            }
        }
        
//
    }
}

struct TestingData_Previews: PreviewProvider {
    static var previews: some View {
        TestingData()
    }
}
