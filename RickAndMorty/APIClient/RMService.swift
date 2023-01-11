//
//  RMService.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 6.01.2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    /// Privalitezed constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///  - request: Request instance
    ///  - type: The type of object we expect to get back 
    ///  - completion: Callback with data or error
    public func execute<T:Codable>
    (_ request: RMRequest,
     expecting type: T.Type,
      completion: @escaping (Result<T, Error>) -> Void) {
        
        
    }
    
    
}
