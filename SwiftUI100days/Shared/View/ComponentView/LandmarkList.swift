//
//  LandmarkList.swift
//  SwiftUI100days
//
//  Created by Le Tan Thanh on 10/04/2022.
//

import SwiftUI

struct LandmarkList: View {
    var landmarks : [Landmark]
    var body: some View {
        NavigationView {
            List(landmarks, id: \.id) { landmark in
                NavigationLink {
                   LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        let landmark = Landmark(id: 1,
                                name: "VinHome A",
                                park: "Central Pack",
                                state: "District 2",
                                description: "List herror",
                                imageName: "icybay",
                                coordinates: .init(latitude: 1.0, longitude: 2.05))
        let landmark2 = Landmark(id: 2,
                                name: "VinHome D",
                                park: "Central Pack",
                                state: "District 1",
                                description: "List herror",
                                imageName: "icybay",
                                coordinates: .init(latitude: 1.0, longitude: 2.05))
        LandmarkList(landmarks: [landmark, landmark2])
    }
}
