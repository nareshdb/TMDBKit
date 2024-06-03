//
//  Video.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public struct Video: Decodable {
    public let id: String
    public let key: String
    public let name: String
    public let site: String
    public let size: Int
    public let type: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case key
        case name
        case site
        case size
        case type
    }
}
