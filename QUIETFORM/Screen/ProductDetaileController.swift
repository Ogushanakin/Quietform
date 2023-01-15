//
//  ProductDetaileController.swift
//  QUIETFORM
//
//  Created by AKIN on 14.01.2023.
//

import UIKit

private let reuseIdentifier = "ProductCell"

final class ProductDetaileController: UITableViewController {
    
    private lazy var basketbutton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(systemName: "bag"), style: .done, target: self, action: #selector(showMenu))
        return button
    }()
    
    private lazy var searchButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .done, target: self, action: #selector(showMenu))
        return button
    }()
    
    private lazy var likeButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(systemName: "heart"), style: .done, target: self, action: #selector(showMenu))
        return button
    }()
    
    private let footerView = FooterView()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = #colorLiteral(red: 0.9620901942, green: 0.9563851953, blue: 0.8940532804, alpha: 1)
        self.navigationItem.title = "QUIETFORM"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(descriptor: UIFontDescriptor(name: "Avenir-Heavy", size: 22), size: 22)]
        navigationController?.navigationBar.tintColor = UIColor.darkGray
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menubig"), style: .done, target: self, action: #selector(showMenu))
        navigationItem.setRightBarButtonItems([basketbutton, likeButton, searchButton], animated: true)
        
        tableView.separatorStyle = .none
        tableView.rowHeight = 360
        tableView.register(ProductCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.tableFooterView = footerView
        footerView.frame = .init(x: 0, y: 0, width: view.frame.width, height: 440)
    }
    
    @objc func showMenu() {
        
    }

}

extension ProductDetaileController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->     UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! ProductCell
        return cell
    }
}
