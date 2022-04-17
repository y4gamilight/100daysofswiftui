//
//  ContentView.swift
//  Shared
//
//  Created by C02GM15YQ05R on 06/04/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var landmarkVM: LandmarkVM
    @State var landmarks: [Landmark] = []
    var body: some View {
        LandmarkList(landmarks: self.landmarkVM.landmarks)
            .onAppear(perform: {
                self.landmarkVM.getAll()
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let landmarkVM = LandmarkVM(service: LandmarkServiceImpl(repository: LandmarkRepositoryImpl()))
        ContentView()
            .environmentObject(landmarkVM)
    }
}

