//
//  ECProductViewController.swift
//  cocoda-impls
//
//  Created by KAGE on 2019/05/03.
//  Copyright © 2019 kagemiku. All rights reserved.
//

import UIKit

class ECProductViewController: UIViewController {

    private let thumbnailImages: [UIImage?] = [
        nil,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSubViews()
    }

    private func setupSubViews() {
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 2)
        let thumbnailCollectionVC = ThumbnailCollectionViewController(with: frame)
        addChild(thumbnailCollectionVC)
        view.addSubview(thumbnailCollectionVC.view)
        thumbnailCollectionVC.didMove(toParent: self)
    }

}
