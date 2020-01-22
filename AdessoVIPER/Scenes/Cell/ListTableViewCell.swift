//
//  ListTableViewCell.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/22/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import UIKit
import Kingfisher

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var listImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with media: Media) {
        titleLabel.text = media.artistName
        subTitleLabel.text = media.trackName
        listImageView.kf.setImage(with: URL(string: media.artworkUrl100 ?? "") )
    }
    
}
