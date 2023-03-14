//
//  RMSearchViewViewModel.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 13.03.2023.
//

import Foundation

// - show search result
// - show no results view
// - kick off API requests

final class RMSearchViewViewModel {
    let config: RMSearchViewController.Config
    private var optionMap: [RMSearchInputViewViewModel.DynamicOption: String] = [:]
    private var searchText = ""
    
    private var optipnMapUpdateBlock: (((RMSearchInputViewViewModel.DynamicOption, String)) -> Void)?
    
    private var searchResultHandler: (() -> Void)?
    
    
    
    //MARK: - Init
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
    
    //MARK: - Public
    
    public func registerSearchResultHandler(_ block: @escaping () -> Void) {
        self.searchResultHandler = block
    }
    
    public func executeSearch() {
        var queryParams: [URLQueryItem] = [
            URLQueryItem(name: "name", value: searchText)
        ]
            
            
        queryParams.append(contentsOf: optionMap.enumerated().compactMap({ _, element in
            let key: RMSearchInputViewViewModel.DynamicOption = element.key
            let value: String = element.value
            return URLQueryItem(name: key.queryArgument, value: value)
        }))
        
        // Send API Call
        let request = RMRequest(
            endpoint: config.type.endpoint,
            queryParameters: queryParams)
        
        
        
        RMService.shared.execute(request, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Search results found: \(model.results.count)")
            case .failure:
                break
            }
        }
        
    }
    
    public func set(query text: String) {
        self.searchText = text
    }
    
    public func set(value: String, for option: RMSearchInputViewViewModel.DynamicOption) {
        optionMap[option] = value
        let tuple = (option, value)
        optipnMapUpdateBlock?(tuple)
    }
    
    public func registerOptionChangeBlock(_ block: @escaping ((RMSearchInputViewViewModel.DynamicOption, String)) -> Void) {
        self.optipnMapUpdateBlock = block
        
    }
}
