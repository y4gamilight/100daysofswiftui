//
//  LandmarkDetail.swift
//  SwiftUI100days
//
//  Created by Le Tan Thanh on 10/04/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
            VStack {
                CircleImageView()
                    .offset(y: -80)
                    .padding(.bottom, -80)
                VStack(alignment: .leading) {
                    Text("Le Tan Thanh")
                        .font(.title)
                    HStack {
                        Text("iOS developer")
                            .font(.subheadline)
                        Spacer()
                        Text("Ho Chi Minh City")
                            
                    }
                    Divider()
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            }
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
