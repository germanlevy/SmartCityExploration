//
//  CityList.swift
//  SmartCityExploration-glevy
//
//  Created by German Levy on 07/08/2025.
//

import Foundation

@Observable
class CityList {
    var allCities: [City] = [
        City(_id: 1, name: "Buenos Aires", country: Country(code: "AR", name: "Argentina"), coordinates: Coordinates(latitude: -34.599998, longitude: -58.450001)),
        City(_id: 2, name: "Rio de Janeiro", country: Country(code: "BR", name: "Brasil"), coordinates: Coordinates(latitude: -22.902781, longitude: -43.2075)),
        City(_id: 3, name: "Hong Kong", country: Country(code: "AR", name: "Argentina"), coordinates: Coordinates(latitude: 22.285521, longitude: 114.157692))
    ]
    
    init() { }
    
    open func getList() -> [City] {
        return allCities
    }
}
