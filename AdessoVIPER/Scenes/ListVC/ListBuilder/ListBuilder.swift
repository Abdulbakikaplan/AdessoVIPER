//
//  ListBuilder.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/10/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation
import UIKit

class ListBuilder {
    
    static func make() -> ListVC {
        let storyBoard = UIStoryboard(name: "ListVC", bundle: nil)
        let view: ListVC = storyBoard.instantiateViewController(withIdentifier: "ListVC") as! ListVC
        let interactor = ListInteractor()
        let router = ListRouter(view: view)
        let presenter = ListPresenter(view: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        
        return view
    }
}
