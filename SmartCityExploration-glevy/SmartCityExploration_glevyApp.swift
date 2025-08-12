//
//  SmartCityExploration_glevyApp.swift
//  SmartCityExploration-glevy
//
//  Created by German Levy on 06/08/2025.
//

import SwiftUI

@main
struct SmartCityExploration_glevyApp: App {
    var body: some Scene {
        WindowGroup {
            CityListView(viewModel: CityListViewModel(cities: CityList()))
        }
    }
}
