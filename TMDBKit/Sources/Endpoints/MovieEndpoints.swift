//
//  MovieEndpoints.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public enum MovieEndpoints {
    case latest
    case popular
    case details(id: Int)
    
    var path: String {
        switch self {
        case .latest:
            return "/movie/latest"
        case .popular:
            return "/movie/popular"
        case .details(let id):
            return "/movie/\(id)"
        }
    }
}
