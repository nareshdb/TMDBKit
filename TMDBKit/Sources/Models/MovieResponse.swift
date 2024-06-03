//
//  MovieResponse.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
}
