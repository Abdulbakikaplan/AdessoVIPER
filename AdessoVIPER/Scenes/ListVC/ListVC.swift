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
        presenter.load()
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
extension ListVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medias?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ListTableViewCell
        cell.configure(with: (medias?.results[indexPath.row])!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
        presenter.selecttrack(at: indexPath.row)
       
        
   }
}
