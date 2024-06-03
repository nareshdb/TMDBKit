//
//  NetworkError.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

enum NetworkError: Error {
    case invalidRequest
    case decodingError
    case networkError(Error)
    
    static func map(_ error: Error) -> NetworkError {
        return (error as? NetworkError) ?? .networkError(error)
    }
}
