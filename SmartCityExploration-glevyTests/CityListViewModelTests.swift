//
//  CityListViewModelTests.swift
//  SmartCityExploration-glevyTests
//
//  Created by German Levy on 11/08/2025.
//

import Testing
@testable import SmartCityExploration_glevy

struct CityListViewModelTests {

    @Test func testFilteredListBySearchedText() async throws {
        let cityListViewModel = CityListViewModel(cities: MockedCityList())
        cityListViewModel.searchText = "Rio"
        #expect(cityListViewModel.filteredCities.count == 1)
    }

}
