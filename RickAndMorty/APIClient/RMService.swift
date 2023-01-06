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
    ///  - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
    
    
}
