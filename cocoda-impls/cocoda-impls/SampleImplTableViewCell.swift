//
//  SampleImplTableViewCell.swift
//  cocoda-impls
//
//  Created by KAGE on 2019/05/03.
//  Copyright © 2019 kagemiku. All rights reserved.
//

import UIKit

class SampleImplTableViewCell: UITableViewCell {

    static let identifier = String(describing: type(of: self))

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with model: SampleImpl) {
        textLabel?.text = model.title
    }
}
