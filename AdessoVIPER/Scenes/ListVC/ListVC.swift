//
//  ListVC.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/22/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import UIKit

class ListVC: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    
    var presenter: ListPresenter!
    var medias: Search?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
extension ListVC: ListViewProtocol {
    
    func handleOutput(_ output:  ListPresenterOutput) {
        switch output {
        case .setLoading(let isLoading):
            UIApplication.shared.isNetworkActivityIndicatorVisible = isLoading
        case .getMediaList(let searchResults):
            self.medias = searchResults
            listTableView.reloadData()
        }
    }
    
    
}
