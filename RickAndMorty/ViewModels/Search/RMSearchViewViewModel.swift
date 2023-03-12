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
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    } 
}
