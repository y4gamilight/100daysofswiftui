//
//  LandmarkVM.swift
//  SwiftUI100days
//
//  Created by C02GM15YQ05R on 12/04/2022.
//

import Foundation

class LandmarkVM: ObservableObject {
    var service: LandmarkService
    init(service: LandmarkService) {
        self.service = service
    }
    @Published var landmarks: [Landmark] = [Landmark]()
    
    func getAll() {
        self.landmarks = self.service.loadLandmarks()
    }
}
