//
//  DetailPresenter.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/22/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation

class DetailPresenter {
    
    var view: trackDetailViewProtocol?
    private let media: Media

    init(view: trackDetailViewProtocol, media: Media) {
        self.view = view
        self.media = media
    }
    
}

extension DetailPresenter: DetailPresenterProtocol {
    func load() {
        view?.update(media)
    }
}
