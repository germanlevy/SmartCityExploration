//
//  City.swift
//  SmartCityExploration-glevy
//
//  Created by German Levy on 07/08/2025.
//

import Foundation

@Observable
class City: Identifiable, Hashable {
    let id = UUID()
    var _id: Int
    var name: String
    var country: Country
    var coordinates: Coordinates
    var isFavorite: Bool = false
    
    init(_id: Int, name: String, country: Country, coordinates: Coordinates) {
        self._id = _id
        self.name = name
        self.country = country
        self.coordinates = coordinates
    }
    
    func setFavorite () {
        isFavorite = true
    }
    
    // Custom Equatable implementation
    static func == (lhs: City, rhs: City) -> Bool {
        return lhs._id == rhs._id
    }

    // Custom Hashable implementation
    func hash(into hasher: inout Hasher) {
        hasher.combine(_id) // Only hash the uniqueID
    }
}

struct Country {
    let code: String
    let name: String
}

struct Coordinates {
    let latitude: Double
    let longitude: Double
}
