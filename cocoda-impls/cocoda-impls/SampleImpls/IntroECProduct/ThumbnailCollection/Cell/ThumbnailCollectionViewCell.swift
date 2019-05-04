//
//  ThumbnailCollectionViewCell.swift
//  cocoda-impls
//
//  Created by KAGE on 2019/05/04.
//  Copyright © 2019 kagemiku. All rights reserved.
//

import UIKit

class ThumbnailCollectionViewCell: UICollectionViewCell {

    static var identifier: String {
        return String(describing: self)
    }

    @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func prepareForReuse() {
        imageView.image = nil
    }

    func configure(with image: UIImage?) {
        imageView.image = image
    }

}
