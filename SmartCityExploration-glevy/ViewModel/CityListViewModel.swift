//
//  CityListViewModel.swift
//  SmartCityExploration-glevy
//
//  Created by German Levy on 07/08/2025.
//

import Foundation

@Observable
class CityListViewModel {
    var cities: CityList
    var searchText: String = ""
    
    init(cities: CityList) {
        self.cities = cities
    }
    
    var filteredCities: [City] {
        // For illustration purposes only.
        // The filtered list should be coming from DataManager.fetchFilteredCities().
        cities.allCities.filter { searchText.isEmpty || $0.name.contains(searchText) }
    }
}
