//
//  LandmarkDetail.swift
//  SwiftUI100days
//
//  Created by Le Tan Thanh on 10/04/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.coordinates)
            VStack {
                CircleImageView(image: landmark.image)
                    .offset(y: -140)
                    .padding(.bottom, -140)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            
                    }
                    Divider()
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
       let landmark = Landmark(id: 1,
                                    name: "VinHome A",
                                    park: "Central Pack",
                                    state: "District 2",
                                    description: "List herror",
                                    imageName: "icybay",
                                    coordinates: .init(latitude: 1.0, longitude: 2.05))
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkDetail(landmark: landmark)
                .previewDevice(PreviewDevice(rawValue: deviceName))
       }
    }
}
