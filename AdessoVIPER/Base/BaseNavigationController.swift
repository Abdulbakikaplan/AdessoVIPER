//
//  BaseNavigationController.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/10/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        navigationBar.barTintColor = UIColor(red: 242/255, green: 197/255, blue: 0, alpha: 1)
        navigationBar.tintColor = .black
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        navigationBar.titleTextAttributes = textAttributes
    }

}
