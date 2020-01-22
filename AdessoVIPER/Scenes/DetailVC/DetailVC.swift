//
//  DetailVC.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/22/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import UIKit
import Kingfisher

class DetailVC: UIViewController, trackDetailViewProtocol {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTitleLabel: UILabel!
    @IBOutlet weak var detailSubtitleLabel: UILabel!
    
    var presenter: DetailPresenter!
    var result: Media!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
    }
    
    func update(_ presentation: Media) {
        detailImageView.kf.setImage(with: URL(string: presentation.artworkUrl100 ?? ""))
        detailTitleLabel.text = presentation.artistName
        detailSubtitleLabel.text = presentation.trackName
    }

}
