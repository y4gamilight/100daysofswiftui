//
//  LandmarkRow.swift
//  SwiftUI100days
//
//  Created by Le Tan Thanh on 10/04/2022.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 60, height: 60, alignment: .leading)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let landmark = Landmark(id: -1,
                                name: "VinHome D",
                                park: "Central Pack",
                                state: "District 1",
                                description: "List herror",
                                imageName: "icybay",
                                coordinates: .init(latitude: 1.0, longitude: 2.05))
        LandmarkRow(landmark: landmark)
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
