//
//  API.swift
//  CovidTracker19
//
//  Created by Alberto Dominguez on 5/20/22.
//

import Foundation

class Api {
    
    // get global Data
    func getAllData(completion: @escaping (GlobalData) -> () ){
        
        guard let url = URL(string: "https://disease.sh/v3/covid-19/all") else {return}

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
        guard let url = URL(string: "https://disease.sh/v3/covid-19/states") else {return}

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
        guard let url = URL(string: "https://disease.sh/v3/covid-19/countries") else {return}

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
