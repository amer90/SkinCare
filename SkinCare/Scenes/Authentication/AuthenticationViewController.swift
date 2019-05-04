//
//  AuthenticationViewController.swift
//  SkinCare
//
//  Created by Ahmed Abdullah on 5/4/19.
//  Copyright © 2019 Ahmed Abdullah. All rights reserved.
//

import UIKit

final class AuthenticationViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }

    @IBAction private func didTappedSignIn(_ sender: UIButton) {
        let controller = UIStoryboard.init(name: "Authentication", bundle: nil).instantiateViewController(withIdentifier: "SignInViewController")
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction private func didTappedSignUp(_ sender: UIButton) {
        let controller = UIStoryboard.init(name: "Authentication", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController")
        navigationController?.pushViewController(controller, animated: true)
    }

}
