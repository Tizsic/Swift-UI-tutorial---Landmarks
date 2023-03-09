//
//  Landmark.swift
//  Landmarks
//
//  Created by Stefan Baggoo on 3/9/23.
//

import Foundation
import SwiftUI
import CoreLocation


    //descirbes landmark data in an object form
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    //stores coordinates
    private var coordinates: Coordinates
    
    //passes coordinates for mapkit to use
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.latitude)
    }
    //structure for coordinates
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
