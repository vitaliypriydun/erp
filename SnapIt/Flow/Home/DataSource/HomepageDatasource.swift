//
//  HomepageDatasource.swift
//  ERP
//
//  Created by Vitaliy Priydun on 18.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class HomepageDatasource<Cell: ReusableCell>: NSObject, UITableViewDataSource {

    private let cells: [HomepageCell]
    
    init(cellOrder: [HomepageCell]) {
        cells = cellOrder
    }

    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: cells[indexPath.row].reuseIdentifier, for: indexPath)
    }
}
