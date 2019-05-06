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

    private lazy var thumbnailCollectionVC: ThumbnailCollectionViewController = {
        let vc = ThumbnailCollectionViewController(with: thumbnailImages)
        return vc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSubViews()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        layoutSubViews()
    }

    private func setupSubViews() {
        addChild(thumbnailCollectionVC)
        view.addSubview(thumbnailCollectionVC.view)
        thumbnailCollectionVC.didMove(toParent: self)
    }

    private func layoutSubViews() {
        let navHeight = view.safeAreaInsets.top
        let frame = CGRect(x: 0, y: navHeight, width: view.frame.width, height: 284.0)
        thumbnailCollectionVC.view.frame = frame
    }

}
