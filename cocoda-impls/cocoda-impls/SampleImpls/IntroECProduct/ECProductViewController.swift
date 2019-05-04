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
        UIImage(named: "sample1"),
        UIImage(named: "sample2"),
        UIImage(named: "sample3"),
        UIImage(named: "sample4"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSubViews()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    private func setupSubViews() {
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 2)
        let thumbnailCollectionVC = ThumbnailCollectionViewController(with: frame, images: thumbnailImages)
        addChild(thumbnailCollectionVC)
        view.addSubview(thumbnailCollectionVC.view)
        thumbnailCollectionVC.didMove(toParent: self)
    }

}
