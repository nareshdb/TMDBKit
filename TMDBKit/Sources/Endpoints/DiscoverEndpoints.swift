//
//  DiscoverEndpoints.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

enum DiscoverEndpoints {
    case movies
    case tvShows
    
    var path: String {
        switch self {
        case .movies:
            return "/discover/movie"
        case .tvShows:
            return "/discover/tv"
        }
    }
}

