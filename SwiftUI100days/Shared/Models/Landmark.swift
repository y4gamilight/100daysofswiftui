//
//  Landmark.swift
//  SwiftUI100days (iOS)
//
//  Created by C02GM15YQ05R on 08/04/2022.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable,Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool = false
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    init(id: Int, name: String, park:String, state:String, description:String, imageName: String, coordinates: Coordinates) {
        self.id = id
        self.name = name
        self.park = park
        self.state = state
        self.description = description
        self.imageName = imageName
        self.coordinates = coordinates
    }
    
}
