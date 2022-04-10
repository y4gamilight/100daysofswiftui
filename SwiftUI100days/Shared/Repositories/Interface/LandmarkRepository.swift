//
//  LandmarkRepository.swift
//  SwiftUI100days (iOS)
//
//  Created by C02GM15YQ05R on 08/04/2022.
//

import Foundation

protocol LandmarkRepository {
    func load<T: Decodable>(_ filename: String) -> T
}
