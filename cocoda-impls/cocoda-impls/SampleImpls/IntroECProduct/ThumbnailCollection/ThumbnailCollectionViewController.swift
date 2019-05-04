//
//  ThumbnailCollectionViewController.swift
//  cocoda-impls
//
//  Created by KAGE on 2019/05/04.
//  Copyright © 2019 kagemiku. All rights reserved.
//

import UIKit

class ThumbnailCollectionViewController: UIViewController {

    var images: [UIImage?] = [] {
        didSet {
            thumbnailCollectionView.reloadData()
        }
    }
    
    @IBOutlet weak var thumbnailCollectionView: UICollectionView! {
        didSet {
            thumbnailCollectionView.register(ThumbnailCollectionViewCell.self, forCellWithReuseIdentifier: ThumbnailCollectionViewCell.identifier)
            thumbnailCollectionView.dataSource = self
        }
    }

    init(with frame: CGRect) {
        super.init(nibName: nil, bundle: nil)
        view.frame = frame
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ThumbnailCollectionViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThumbnailCollectionViewCell.identifier, for: indexPath) as! ThumbnailCollectionViewCell
        cell.configure(with: images[indexPath.row])

        return cell
    }

}
