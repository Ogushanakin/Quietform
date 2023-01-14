//
//  HeroHeaderView.swift
//  SHOPPING-APP
//
//  Created by AKIN on 27.10.2022.
//

import UIKit

final class FooterView: UICollectionReusableView {
    
    // MARK: - Properties
    
    static let identifier = "HeroHeaderView"
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
