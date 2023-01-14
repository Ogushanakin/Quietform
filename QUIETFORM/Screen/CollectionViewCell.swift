//
//  CollectionViewCell.swift
//  QUIETFORM
//
//  Created by AKIN on 14.01.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = "CollectionViewCell"
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "ceramic")
        imageView.setDimensions(height: 320, width: 360)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(posterImageView)
        backgroundColor = #colorLiteral(red: 0.9620901942, green: 0.9563851953, blue: 0.8940532804, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = bounds
    }
    
}
