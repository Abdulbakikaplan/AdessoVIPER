//
//  SongListModel.swift
//  AdessoVIPER
//
//  Created by Abdülbaki Kaplan on 1/10/20.
//  Copyright © 2020 Abdülbaki Kaplan. All rights reserved.
//

import Foundation

struct Search {
    
    var results : [Media]
    let resultCount: Int
}

extension Search : Decodable {
    
    enum SearchCodingKeys : String, CodingKey{
        case results = "results"
        case resultCount = "resultCount"
    }
    
    init(from decoder : Decoder) throws {
        let container = try decoder.container(keyedBy: SearchCodingKeys.self)
        
        results = try container.decode([Media].self, forKey: .results)
        resultCount = try container.decode(Int.self, forKey: .resultCount)
    }
}
