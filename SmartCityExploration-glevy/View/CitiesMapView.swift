//
//  CitiesMap.swift
//  SmartCityExploration-glevy
//
//  Created by German Levy on 06/08/2025.
//

import SwiftUI
import MapKit

struct CitiesMapView: View {
    static let positionSpan = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    var city: City
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
            span: positionSpan
        )
    )
    
    var body: some View {
        Map(position: $position)
            .onAppear {
                showCity(city: city)
            }
            .onChange(of: city) {
                showCity(city: city)
            }
    }
    
    public func showCity(city: City) {
        position = MapCameraPosition.region(MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: city.coordinates.latitude, longitude: city.coordinates.longitude),
                span: CitiesMapView.positionSpan
            )
        )
    }
}

#Preview {
    var city = City(_id: 1, name: "Buenos Aires", country: Country(code: "AR", name: "Argentina"), coordinates: Coordinates(latitude: 34.6037, longitude: 58.3821))
    CitiesMapView(city: city)
}
