//
//  TVShow.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public struct TVShow: Decodable {
    public let id: Int
    public let name: String
    public let overview: String
    public let firstAirDate: String
    public let posterPath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case overview
        case firstAirDate = "first_air_date"
        case posterPath = "poster_path"
    }
}
