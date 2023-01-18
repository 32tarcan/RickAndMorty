//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Bahadır Tarcan on 18.01.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
