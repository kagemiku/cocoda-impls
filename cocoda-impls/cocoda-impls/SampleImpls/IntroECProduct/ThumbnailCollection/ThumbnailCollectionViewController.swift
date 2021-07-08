//
//  ThumbnailCollectionViewController.swift
//  cocoda-impls
//
//  Created by KAGE on 2019/05/04.
//  Copyright © 2019 kagemiku. All rights reserved.
//

import UIKit

class ThumbnailCollectionViewController: UIViewController {

    private let images: [UIImage?]
    
    @IBOutlet weak var thumbnailCollectionView: UICollectionView! {
        didSet {
            thumbnailCollectionView.register(UINib(nibName: "ThumbnailCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ThumbnailCollectionViewCell.identifier)
            thumbnailCollectionView.dataSource = self
            thumbnailCollectionView.delegate = self
        }
    }

    init(with images: [UIImage?]) {
        self.images = images
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        thumbnailCollectionView.reloadData()
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

extension ThumbnailCollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.frame.size

        return CGSize(width: collectionViewSize.height, height: collectionViewSize.height)
    }

}

