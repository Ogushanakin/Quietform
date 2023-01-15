//
//  HeroHeaderView.swift
//  SHOPPING-APP
//
//  Created by AKIN on 27.10.2022.
//

import UIKit

final class FooterView: UICollectionReusableView {
    
    // MARK: - Properties
    
    private let productName: UILabel = {
        let label = UILabel()
        label.text = "Ceramic Mug"
        label.textColor = #colorLiteral(red: 0.07058823529, green: 0.07058823529, blue: 0.07058823529, alpha: 1)
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir-Medium", size: 20), size: 20)
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$60"
        label.textColor = #colorLiteral(red: 0.07058823529, green: 0.07058823529, blue: 0.07058823529, alpha: 1)
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir-Medium", size: 24), size: 24)
        return label
    }()
    
    private let materialLabel: UILabel = {
        let label = UILabel()
        label.text = "Material: ceramic"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir", size: 20), size: 20)
        return label
    }()
    
    private let surfaceLabel: UILabel = {
        let label = UILabel()
        label.text = "Surface: matte"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir", size: 20), size: 20)
        return label
    }()
    
    private let diameterLabel: UILabel = {
        let label = UILabel()
        label.text = "diameter - 5,5 cm"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir", size: 20), size: 20)
        return label
    }()
    
    private let heightLabel: UILabel = {
        let label = UILabel()
        label.text = "height - 15 cm"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir", size: 20), size: 20)
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "can be used microwave and washdishes"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir", size: 20), size: 20)
        return label
    }()
    
    private let quantityLabel: UILabel = {
        let label = UILabel()
        label.text = "quantity:"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir", size: 20), size: 20)
        return label
    }()
    
    private let stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        return stepper
    }()
    
    private let stepperCount: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir", size: 22), size: 22)
        return label
    }()
    
    private lazy var addCartButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Add to cart", for: .normal)
        button.layer.cornerRadius = 4
        button.titleLabel?.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir-Medium", size: 20), size: 20)
        button.tintColor = #colorLiteral(red: 0.07058823529, green: 0.07058823529, blue: 0.07058823529, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.8793643117, green: 0.4799818397, blue: 0.3721193075, alpha: 1)
        return button
    }()
    
    private let paymentsView: UIView = {
        let view = UIView()
        
        let label = UILabel()
        label.text = "Payments"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir-Medium", size: 20), size: 20)
        view.addSubview(label)
        label.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor,
                     paddingLeft: 10)
        
        let plusImage = UIImageView()
        plusImage.image = UIImage(systemName: "plus")
        plusImage.tintColor = #colorLiteral(red: 0.4663450718, green: 0.7283658981, blue: 0, alpha: 1)
        plusImage.setDimensions(height: 20, width: 20)
        view.addSubview(plusImage)
        plusImage.centerY(inView: label)
        plusImage.anchor(right: view.rightAnchor, paddingRight: 6)
        
        let dividerView = UIView()
        dividerView.backgroundColor = .darkGray
        view.addSubview(dividerView)
        dividerView.anchor(top: label.bottomAnchor, left: view.leftAnchor,
                           right: view.rightAnchor, paddingTop: 4, height: 0.75)
        return view
    }()
    
    private let deliveryView: UIView = {
        let view = UIView()
        
        let label = UILabel()
        label.text = "Delivery"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir-Medium", size: 20), size: 20)
        view.addSubview(label)
        label.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor,
                     paddingLeft: 10)
        
        let plusImage = UIImageView()
        plusImage.image = UIImage(systemName: "plus")
        plusImage.tintColor = #colorLiteral(red: 0.4663450718, green: 0.7283658981, blue: 0, alpha: 1)
        plusImage.setDimensions(height: 20, width: 20)
        view.addSubview(plusImage)
        plusImage.centerY(inView: label)
        plusImage.anchor(right: view.rightAnchor, paddingRight: 6)
        
        let dividerView = UIView()
        dividerView.backgroundColor = .darkGray
        view.addSubview(dividerView)
        dividerView.anchor(top: label.bottomAnchor, left: view.leftAnchor,
                           right: view.rightAnchor, paddingTop: 4, height: 0.75)
        return view
    }()
    
    private let purchaseView: UIView = {
        let view = UIView()
        
        let label = UILabel()
        label.text = "Purchase returns"
        label.textColor = .darkGray
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Avenir-Medium", size: 20), size: 20)
        view.addSubview(label)
        label.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor,
                     paddingLeft: 10)
        
        let plusImage = UIImageView()
        plusImage.image = UIImage(systemName: "plus")
        plusImage.tintColor = #colorLiteral(red: 0.4663450718, green: 0.7283658981, blue: 0, alpha: 1)
        plusImage.setDimensions(height: 20, width: 20)
        view.addSubview(plusImage)
        plusImage.centerY(inView: label)
        plusImage.anchor(right: view.rightAnchor, paddingRight: 6)
        
        let dividerView = UIView()
        dividerView.backgroundColor = .darkGray
        view.addSubview(dividerView)
        dividerView.anchor(top: label.bottomAnchor, left: view.leftAnchor,
                           right: view.rightAnchor, paddingTop: 4, height: 0.75)
        return view
    }()
    
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(productName)
        productName.anchor(top: self.topAnchor, left: self.leftAnchor,
                           paddingTop: -30, paddingLeft: 20)
        
        addSubview(priceLabel)
        priceLabel.anchor(top: productName.bottomAnchor, left: self.leftAnchor,
                          paddingTop: 2, paddingLeft: 20)
        
        addSubview(materialLabel)
        materialLabel.anchor(top: priceLabel.bottomAnchor, left: self.leftAnchor,
                             paddingTop: 12, paddingLeft: 20)
        
        addSubview(surfaceLabel)
        surfaceLabel.anchor(top: priceLabel.bottomAnchor, left: materialLabel.rightAnchor,
                             paddingTop: 12, paddingLeft: 40)
        
        addSubview(diameterLabel)
        diameterLabel.anchor(top: surfaceLabel.bottomAnchor, left: self.leftAnchor,
                             paddingTop: 6, paddingLeft: 20)
        
        addSubview(heightLabel)
        heightLabel.anchor(top: diameterLabel.bottomAnchor, left: self.leftAnchor,
                             paddingTop: 6, paddingLeft: 20)
        
        addSubview(descriptionLabel)
        descriptionLabel.anchor(top: heightLabel.bottomAnchor, left: self.leftAnchor,
                             paddingTop: 6, paddingLeft: 20)
        
        let quantityStack = UIStackView(arrangedSubviews: [quantityLabel, stepperCount,stepper])
        quantityStack.axis = .horizontal
        quantityStack.spacing = 10
        quantityStack.distribution = .equalSpacing
        
        addSubview(quantityStack)
        quantityStack.anchor(top: descriptionLabel.bottomAnchor, left: self.leftAnchor,
                             paddingTop: 6, paddingLeft: 20)
        
        addSubview(addCartButton)
        addCartButton.anchor(top: quantityStack.bottomAnchor, left: self.leftAnchor,
                             right: self.rightAnchor , paddingTop: 12,
                             paddingLeft: 20, paddingRight: 20, height: 50)
        
        let stack = UIStackView(arrangedSubviews: [paymentsView, deliveryView, purchaseView])
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.spacing = 6
        
        addSubview(stack)
        stack.anchor(top: addCartButton.bottomAnchor, left: self.leftAnchor,
                     right: self.rightAnchor,  paddingTop: 20, paddingLeft: 20,
                     paddingRight: 20, height: 100)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
