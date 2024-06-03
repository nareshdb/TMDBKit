//
//  TVShowEndpoints.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

enum TVShowEndpoints {
    case latest
    case popular
    case details(id: Int)
    
    var path: String {
        switch self {
        case .latest:
            return "/tv/latest"
        case .popular:
            return "/tv/popular"
        case .details(let id):
            return "/tv/\(id)"
        }
    }
}

