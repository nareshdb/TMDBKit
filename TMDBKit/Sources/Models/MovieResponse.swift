//
//  MovieResponse.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public struct MovieResponse: Decodable {
    public let results: [Movie]
}
