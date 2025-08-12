//
//  ContentView.swift
//  SmartCityExploration-glevy
//
//  Created by German Levy on 06/08/2025.
//

import SwiftUI

struct CityListView: View {
    @State private var visibility: NavigationSplitViewVisibility = .all
    @Bindable var viewModel: CityListViewModel
    @State private var selectedCity: City? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility ) { // For navigation to detail view
            List(viewModel.filteredCities, selection: $selectedCity) { city in
                    row(city: city)
            }
        } detail: {
            if let selectedCity {
                CitiesMapView(city: selectedCity)
            }
        }
        .searchable(text: $viewModel.searchText)
        .navigationTitle("Smart City Exploration")
    }
    
    private func row(city: City) -> some View {
        Button(city.name) {
            selectedCity = city
        }
        .swipeActions(edge: .leading) {
            Button("Favorite", systemImage: "trophy") {
                city.setFavorite()
            }
            .tint(.orange)
        }
    }
}

#Preview {
    CityListView(viewModel: CityListViewModel(cities: CityList()))
}
