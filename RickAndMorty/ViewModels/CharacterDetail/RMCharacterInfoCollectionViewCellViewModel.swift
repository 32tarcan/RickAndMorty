//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 3.03.2023.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    public let value: String
    public let title: String
    init(
        value: String,
         title: String
    ) {
        self.value = value
        self.title = title
        
    }
}
