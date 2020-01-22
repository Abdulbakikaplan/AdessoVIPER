//
//  DetailContracts.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/22/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation

// MARK: Presenter
protocol DetailPresenterProtocol {
     func load()
}

protocol trackDetailViewProtocol {
    func update(_ presentation: Media)
}
