//
//  DetailBuilder.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/22/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation
import UIKit

class DetailBuilder {
    
    static func make(media: Media) -> DetailVC {
        let storyBoard = UIStoryboard(name: "DetailVC", bundle: nil)
        let view = storyBoard.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        let presenter = DetailPresenter(view: view as! trackDetailViewProtocol, media: media)
        
        view.presenter = presenter
        
        return view
    }
}
