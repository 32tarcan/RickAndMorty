//
//  RMLocationViewController.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 5.01.2023.
//

import UIKit

/// Controller to show and search for location
class RMLocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Locations"
        addSearchButton()
    }
    
    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self,
              action: #selector(didTapSearch))
    }
    
    @objc
    private func didTapSearch() {
        
    }
  

}
