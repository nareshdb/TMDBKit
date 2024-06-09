//
//  NetworkError.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public enum TMDBError: Error {
    case apiKeyNotSet
    case invalidRequest
    case decodingError
    case networkError(Error)
    
    static func map(_ error: Error) -> TMDBError {
        return (error as? TMDBError) ?? .networkError(error)
    }
}
