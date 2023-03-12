//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 10.03.2023.
//

import Foundation

protocol RMLocationViewViewModelDelegate: AnyObject {
    func didFetchInitialLocations()
}


final class RMLocationViewViewModel {
    
    weak var delegate: RMLocationViewViewModelDelegate?
    
    private var locations: [RMLocation] = [] {
        didSet {
            for location in locations {
                let cellViewModel = RMLocationsTableViewCellViewModel(location: location)
                if !cellViewModels.contains(cellViewModel) {
                    cellViewModels.append(cellViewModel)
                }
            }
        }
    }
    
    // Location response info
    // Will contain next url, if present
    private var apiInfo: RMGetAllLocationsResponse.Info?
    
    public private(set) var cellViewModels: [RMLocationsTableViewCellViewModel] = []
    
    init(){}
    
    public func location(at index: Int) -> RMLocation? {
        guard index >= locations.count else {
            return nil
        }
        return self.locations[index]
    }
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationsRequests,
                                 expecting: RMGetAllLocationsResponse.self)  { [weak self] result in
            switch result {
            case .success(let model):
                self?.apiInfo = model.info
                self?.locations = model.results
                DispatchQueue.main.async {
                    self?.delegate?.didFetchInitialLocations()
                }
            case .failure(let error):
                break
            }
            
        }
        
    }
    
    private var hasModeResults: Bool {
        return false
    }
}
