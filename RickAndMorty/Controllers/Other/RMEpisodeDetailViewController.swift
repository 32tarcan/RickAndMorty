//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 5.03.2023.
//

import UIKit

/// VC to show details about single episode
final class RMEpisodeDetailViewController: UIViewController, RMEpisodeDetailViewViewModelDelegate {
    
    private let viewModel: RMEpisodeDetailViewViewModel
     
    
    private let detailView = RMEpisodeDetailView()
    
    //MARK: - Init
    
    init(url: URL?) {
        self.viewModel = RMEpisodeDetailViewViewModel(endpointUrl: url)
        super.init(nibName: nil, bundle: nil)
        view.addSubview(detailView)
       
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(detailView)
        addConstraints()
        title = "Episode"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action:
             #selector(didTapSearch))
        
        viewModel.delegate = self
        viewModel.fetchEpisodeData()
        
    }
    
    @objc
    private func didTapSearch() {
        
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            detailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            detailView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            detailView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            detailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
    }
    
    //MARK: - Delegate
    
    func didFetchEpisodeDetails() {
        detailView.configure(with: viewModel)
    }
    
}
