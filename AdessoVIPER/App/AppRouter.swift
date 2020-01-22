//
//  AppRouter.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/22/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation
import UIKit

final class AppRouter {
    let window: UIWindow
    
    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func start() {
        let viewController = ListBuilder.make()
        let navigationController = BaseNavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
