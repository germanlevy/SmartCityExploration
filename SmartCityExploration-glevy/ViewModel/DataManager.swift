//
//  DataManager.swift
//  SmartCityExploration-glevy
//
//  Created by German Levy on 11/08/2025.
//

import Foundation


class DataManager {
    
    // Here we could change implementation to use a different dependency
    private var dataRepository: DataRepository = CoreDataRepository()
    
    func updateAllCities() {
        // Here we should get data from CityAPI and save it un local storage
    }
    
    func fetchFilteredCities(query: String) -> CityList {
        return CityList()
    }
    
    func saveFavouriteCity(city: City) {
        // Here we need to save favorite cities un UserDefaults
    }
    
}
