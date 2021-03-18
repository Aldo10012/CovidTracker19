//
//  Data.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 3/17/21.
//

import SwiftUI

struct GlobalData: Codable, Identifiable {
    let id = UUID()
    var active: Int
    var deaths: Int
    var todayDeaths: Int
    var recovered: Int
    var todayRecovered: Int
}

struct StateData: Codable, Identifiable {
    let id = UUID()
    var state: String
    var active: Int
    var deaths: Int
    var recovered: Int
}

struct CountriesData: Codable, Identifiable {
    let id = UUID()
    var country: String
    var countryInfo: CountryInfo
    var deaths: Int
    var todayDeaths: Int
    var recovered: Int
    var todayRecovered: Int
    var cases: Int
    var active: Int
}

struct CountryInfo: Codable, Identifiable {
    let id = UUID()
    var lat: Double
    var long: Double
}


struct Post: Codable, Identifiable {
    let id = UUID()
    var title: String
    var body: String
}

class Api {
    // testing
    func getPosts(completion: @escaping ([Post]) -> () ) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
            print(posts)
        }
        .resume()
    }
    
    
    // get global Data
    func getAllData(completion: @escaping (GlobalData) -> () ){
        guard let url = URL(string: "https://corona.lmao.ninja/v3/covid-19/all") else {return}

        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let data = try! JSONDecoder().decode(GlobalData.self, from: data!)
            DispatchQueue.main.async {
                completion(data)
            }
            print(data)
        }
        .resume()

    }
    
    // get state data
    func getStateData(completion: @escaping ([StateData]) -> () ){
        guard let url = URL(string: "https://corona.lmao.ninja/v3/covid-19/states") else {return}

        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let data = try! JSONDecoder().decode([StateData].self, from: data!)
            DispatchQueue.main.async {
                completion(data)
            }
            print(data)
        }
        .resume()

    }
    
    // get countries Data
    func getCountryData(completion: @escaping ([CountriesData]) -> () ){
        guard let url = URL(string: "https://corona.lmao.ninja/v3/covid-19/countries") else {return}

        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let data = try! JSONDecoder().decode([CountriesData].self, from: data!)
            DispatchQueue.main.async {
                completion(data)
            }
            print(data)
        }
        .resume()

    }
}
