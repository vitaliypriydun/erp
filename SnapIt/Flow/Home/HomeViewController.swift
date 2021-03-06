//
//  HomeViewController.swift
//  ERP
//
//  Created by Vitaliy Priydun on 17.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var presenter: HomeOutput?
    
    @IBOutlet private weak var tableView: UITableView!
    private var dataSource = HomepageDatasource(cellOrder: [])
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        performInitialSetup()
        setupTexts()
        presenter?.viewDidLoad()
    }

    // MARK: - Private

    private func setupTexts() {
        title = Localization.Home.title + Date().toDayString
        tabBarItem = TabbarItemsFactory.makeHomeButton()
    }
    
    private func performInitialSetup() {
        HomepageCell.allCases.compactMap({ $0.reuseIdentifier}).forEach({
            tableView.register(UINib(nibName: $0, bundle: nil), forCellReuseIdentifier: $0)
        })
        dataSource.delegate = presenter
        tableView.dataSource = dataSource
    }
}

// MARK: - HomeInterface

extension HomeViewController: HomeInterface {
    
    var animatableViews: [UIView] { return [] }
    
    func set(editing: Bool) {
        tableView.setEditing(editing, animated: true)
    }
    
    func set(cells: [HomepageCell]) {
        dataSource.set(cells: cells)
        tableView.reloadData()
    }
}
