//
//  ContentView.swift
//  Shared
//
//  Created by C02GM15YQ05R on 06/04/2022.
//

import SwiftUI

struct ContentView: View {
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
                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
