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

class LandmarkRepositoryImpl: LandmarkRepository {
    func load<T: Decodable>(_ filename: String) -> T {
        let data:Data
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Could't find \(filename) in main bundle")
        }
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle \(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self)")
        }
    }
}
