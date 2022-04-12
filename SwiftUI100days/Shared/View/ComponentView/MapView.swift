//
//  MapView.swift
//  SwiftUI100days
//
//  Created by C02GM15YQ05R on 07/04/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: Landmark.Coordinates
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: Landmark.Coordinates) {
        let coordinate = CLLocationCoordinate2D(latitude: self.coordinate.latitude, longitude: self.coordinate.longitude)
        region = MKCoordinateRegion(center: coordinate,
                                    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: .init(latitude: 1.0, longitude: 1.0))
    }
}
