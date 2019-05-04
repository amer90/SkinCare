//
//  SplashViewController.swift
//  SkinCare
//
//  Created by Ahmed Abdullah on 5/4/19.
//  Copyright © 2019 Ahmed Abdullah. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(showAuth), with: self, afterDelay: 3)
        
    }
    
    @objc
    private func showAuth(){
        let controller = UIStoryboard.init(name: "Authentication", bundle: nil).instantiateViewController(withIdentifier: "AuthenticationViewController")
        let nav = UINavigationController(rootViewController: controller)
        navigationController?.present(nav, animated: true)
    }

}
