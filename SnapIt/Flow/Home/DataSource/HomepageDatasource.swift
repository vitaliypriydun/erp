//
//  HomepageDatasource.swift
//  ERP
//
//  Created by Vitaliy Priydun on 18.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class HomepageDatasource: NSObject, UITableViewDataSource {
    
    weak var delegate: HomepageDelegate?

    private var cells: [HomepageCell] = []
    private var presenters: [HomepageCellPresenter] = []
    
    init(cellOrder: [HomepageCell]) {
        cells = cellOrder
    }

    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = cells[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath)
        if let presenter = cellType.makePresenter(with: cell) {
            presenter.set(delegate: delegate)
            presenters.append(presenter)
        }
        return cell
    }
}

extension HomepageDatasource {
    
    func set(cells: [HomepageCell]) {
        self.cells = cells
        self.presenters = []
    }
}
