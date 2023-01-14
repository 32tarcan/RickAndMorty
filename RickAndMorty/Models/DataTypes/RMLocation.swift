//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 5.01.2023.
//

import Foundation

struct RMLocation: Codable {
    
       let id: Int
       let name: String
       let type: String
       let dimension: String
       let residents: [String]
       let url: String
       let created: String
}
