//
//  MainViewController.swift
//  SkinCare
//
//  Created by Ahmed Abdullah on 5/4/19.
//  Copyright © 2019 Ahmed Abdullah. All rights reserved.
//

import UIKit

final class MainViewController: UITabBarController {
    
    // MARK: - Properties
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureTabBar()
    }
    
    // MARK: - Actions
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        title = item.title
    }
}

// MARK: - Configurations

private extension MainViewController {
    func configureNavigationBar() {
        title = "Home"
        let barButtonItem = UIBarButtonItem()
        barButtonItem.title = ""
        navigationItem.backBarButtonItem = barButtonItem
    }
    
    func configureTabBar() {
        
        let home = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let settings = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingsTableViewController") as! SettingsTableViewController
        
        tabBar.tintColor = .blue
        home.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "home"), tag: 0)
        settings.tabBarItem = UITabBarItem(title: "Settings", image: #imageLiteral(resourceName: "settings"), tag: 1)
        let controllers = [home, settings]
        viewControllers = controllers.map { UINavigationController(rootViewController: $0) }
    }
}
