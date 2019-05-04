//
//  SingInViewController.swift
//  SkinCare
//
//  Created by Ahmed Abdullah on 5/4/19.
//  Copyright © 2019 Ahmed Abdullah. All rights reserved.
//

import UIKit

final class SignInViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
  
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign-In"
    }
    
    @IBAction func didTappedSignIn(_ sender: UIButton) {
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController")
        present(controller, animated: true)
    }
        
}
