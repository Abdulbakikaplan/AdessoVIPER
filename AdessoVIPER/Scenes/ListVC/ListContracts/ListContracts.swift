//
//  ListContracts.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/10/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation

// MARK: View
protocol ListViewProtocol: class {
    func handleOutput(_ output: ListPresenterOutput)
}

// MARK: Presenter
protocol ListPresenterProtocol {
    func load()
    func selecttrack(at index: Int)
}

enum ListPresenterOutput {
    case setLoading(Bool)
    case getMediaList(medias: Search)
}

// MARK: Interactor -
protocol ListInteractorProtocol {

 var delegate: ListInteractorDelegate? { get set }
    func load()
    func selecttrack(at index: Int)
}

protocol ListInteractorDelegate: class {
    func handleOutput(_ output: ListInteractorOutput)
}

enum ListInteractorOutput {
    case setLoading(Bool)
    case getMediaList(Search)
    case showtrackDetail(Media)
}

// MARK: Router

enum ListRoutes {
    case list(Media)
}

protocol ListRouterProtocol {
    func navigate(_ route: ListRoutes)
}
