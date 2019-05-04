//
//  HomeViewController.swift
//  SkinCare
//
//  Created by Ahmed Abdullah on 5/4/19.
//  Copyright © 2019 Ahmed Abdullah. All rights reserved.
//

import UIKit
import CameraManager

final class HomeViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet private weak var imageView: UIImageView!

    // MARK: - Properties
    
    let cameraManager = CameraManager()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTitle()
        configureCamera()
    }
}

// MARK: - Configurations

private extension HomeViewController {
    func configureTitle() {
        self.title = "Home"
    }
    
    func configureCamera() {
        cameraManager.addPreviewLayerToView(self.view)
        cameraManager.capturePictureWithCompletion({ result in
            switch result {
            case .failure: break
            // error handling
            case .success(let content):
                self.imageView.image = content.asImage
            }
        })
    }
}
