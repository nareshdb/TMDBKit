//
//  TVShow.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

struct TVShow: Decodable {
    let id: Int
    let name: String
    let overview: String
    let firstAirDate: String
    let posterPath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case overview
        case firstAirDate = "first_air_date"
        case posterPath = "poster_path"
    }
}
