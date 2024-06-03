//
//  Movie.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public struct Movie: Decodable {
    public let id: Int
    public let title: String
    public let overview: String
    public let releaseDate: String
    public let posterPath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case overview
        case releaseDate = "release_date"
        case posterPath = "poster_path"
    }
}
