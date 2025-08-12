//
//  DataRepository.swift
//  SmartCityExploration-glevy
//
//  Created by German Levy on 11/08/2025.
//

import Foundation

protocol DataRepository {
    func saveAllCities(cities: [City])
    func fetchFilteredCities(query: String) -> CityList
}
