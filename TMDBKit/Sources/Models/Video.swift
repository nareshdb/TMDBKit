//
//  Video.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

struct Video: Decodable {
    let id: String
    let key: String
    let name: String
    let site: String
    let size: Int
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case key
        case name
        case site
        case size
        case type
    }
}
