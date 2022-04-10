//
//  LandmarkServiceImpl.swift
//  SwiftUI100days
//
//  Created by Le Tan Thanh on 10/04/2022.
//

import Foundation

class LandmarkServiceImpl: LandmarkService {
    private var repository: LandmarkRepository
    init (repository: LandmarkRepository) {
        self.repository = repository
    }
    
    func loadLandmarks() -> [Landmark] {
        return self.repository.load("landmarkData.json")
    }
}
