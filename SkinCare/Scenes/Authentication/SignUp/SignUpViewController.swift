//
//  SignUpViewController.swift
//  SkinCare
//
//  Created by Ahmed Abdullah on 5/4/19.
//  Copyright © 2019 Ahmed Abdullah. All rights reserved.
//

import UIKit


final class SignUpViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var confirmPasswordTextField: UITextField!
    @IBOutlet private weak var birthDateTextField: UITextField!
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign-Up"
    }
    
    // MARK: - Interactions
    
    @IBAction func didTappedSignUp(_ sender: UIButton) {
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController")
        present(controller, animated: true)
    }

}

// MARK: - Configurations

private extension SignUpViewController {
}
