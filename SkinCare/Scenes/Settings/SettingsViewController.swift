//
//  SettingsTableViewController.swift
//  SkinCare
//
//  Created by Ahmed Abdullah on 5/4/19.
//  Copyright © 2019 Ahmed Abdullah. All rights reserved.
//

import UIKit

final class SettingsTableViewController: UITableViewController {

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureTitle()
    }
}

// MARK: - Configurations

private extension SettingsTableViewController {
    func configureTitle() {
        self.title = "Settings"
    }
    
    func configureTableView() {
        tableView.tableFooterView = UIView()
        tableView.tableHeaderView = UIView(
            frame: CGRect(origin: .zero,
                          size: CGSize(width: tableView.frame.width,
                                       height: 20)))
    }
}
