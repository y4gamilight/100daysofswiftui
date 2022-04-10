//
//  LandmarkService.swift
//  SwiftUI100days
//
//  Created by Le Tan Thanh on 10/04/2022.
//

import Foundation

protocol LandmarkService {
    func loadLandmarks() -> [Landmark] 
}
