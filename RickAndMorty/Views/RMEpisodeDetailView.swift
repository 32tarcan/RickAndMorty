//
//  RMEpisodeDetailView.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 6.03.2023.
//

import UIKit

final class RMEpisodeDetailView: UIView {
    
    
    private var viewModel: RMEpisodeDetailViewViewModel?
    
    private var collectionView: UICollectionView?
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView()
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
        
    }()
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
        self.collectionView = createCollectionView()
        addConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
        
        ])
        
    }
    
    private func createCollectionView() -> UICollectionView {
        
    }
    
    public func configure(with viewModel: RMEpisodeDetailViewViewModel) {
        self.viewModel = viewModel
        
    }
    
}
