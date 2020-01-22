//
//  ListInteractor.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/10/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation

final class ListInteractor {

    weak var delegate: ListInteractorDelegate?
    private var tracks: Search!
}

extension  ListInteractor:  ListInteractorProtocol {

    func load() {
        delegate?.handleOutput(.setLoading(true))
        
        provider.request(.search) { [weak self] response in
            guard let self = self else { return }
            self.delegate?.handleOutput(.setLoading(false))
            
            switch response {
            case .success(let value):
                let data = value.data
                
                do {
                    let results = try JSONDecoder().decode(Search.self, from: data)
                    self.tracks = results
                    self.delegate?.handleOutput(.getMediaList(results))
                } catch let error {
                    print(error)
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func selecttrack(at index: Int) {
        let track = tracks.results[index]
        delegate?.handleOutput(.showtrackDetail(track))
    }
 
}
