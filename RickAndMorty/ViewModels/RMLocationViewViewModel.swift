//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 10.03.2023.
//

import Foundation


final class RMLocationViewViewModel {
    
    private var locations: [RMLocation] = []
    
    //Location response info
    // will contain next url, if present
    
    private var cellViewModels: [String] = []
    
    init(){}
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationsRequests,
                                 expecting: String.self)  { result in
            switch result {
            case .success(let model):
                break
            case .failure(let error):
                break
            }
            
        }
        
    }
    
    private var hasModeREsults: Bool {
        return false
    }
}
