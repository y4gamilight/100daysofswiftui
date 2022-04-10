//
//  LandmarkRepositoryImpl.swift
//  SwiftUI100days
//
//  Created by Le Tan Thanh on 10/04/2022.
//

import Foundation

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
