//
//  ListRouter.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/10/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation
import UIKit

final class ListRouter {
    
    var view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
}

extension ListRouter: ListRouterProtocol {
    func navigate(_ route: ListRoutes) {
//        switch route {
//        case .list(let searchModel):
//            let listView = DetailBuilder.make(media: searchModel)
//            view.show(listView, sender: nil)
        }
    }
//}
