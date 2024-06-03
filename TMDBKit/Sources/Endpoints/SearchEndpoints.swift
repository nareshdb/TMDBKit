//
//  SearchEndpoints.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public enum SearchEndpoints {
    case movie(query: String)
    case tvShow(query: String)
    case person(query: String)
    
    var path: String {
        switch self {
        case .movie:
            return "/search/movie"
        case .tvShow:
            return "/search/tv"
        case .person:
            return "/search/person"
        }
    }
    
    var queryItems: [URLQueryItem] {
        switch self {
        case .movie(let query), .tvShow(let query), .person(let query):
            return [URLQueryItem(name: "query", value: query)]
        }
    }
}

