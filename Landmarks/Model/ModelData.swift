//
//  ModelData.swift
//  Landmarks
//
//  Created by Stefan Baggoo on 3/9/23.
//

import Foundation

var landmarks: [Landmark] = load(landmarks: "landmarkData.json")

func load<T:Decodable>(landmarks: String) -> T  {
    let data: Data;
    
    guard let file = Bundle.main.url(forResource: landmarks, withExtension: nil)
    else{
        fatalError("Couldn't find \(landmarks) in main bundle.")
    }
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(landmarks) from bundle:\n\(error)")
    }
    
    do {
           let decoder = JSONDecoder()
           return try decoder.decode(T.self, from: data)
       } catch {
           fatalError("Couldn't parse \(landmarks) as \(T.self):\n\(error)")
       }
    
}
