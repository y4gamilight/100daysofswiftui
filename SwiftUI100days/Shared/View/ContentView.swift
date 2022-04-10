//
//  ContentView.swift
//  Shared
//
//  Created by C02GM15YQ05R on 06/04/2022.
//

import SwiftUI

struct ContentView: View {
    let landmarkService: LandmarkService = LandmarkServiceImpl(repository: LandmarkRepositoryImpl())
    @State var landmarks: [Landmark] = []
    var body: some View {
        LandmarkList(landmarks: landmarks)
            .onAppear(perform: {
                self.landmarks = landmarkService.loadLandmarks()
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

