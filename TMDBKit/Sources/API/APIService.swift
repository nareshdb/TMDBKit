//
//  APIService.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation
import Combine

public protocol APIServiceProtocol {
    func fetchLatestMovies() -> AnyPublisher<[Movie], NetworkError>
    func fetchPopularMovies() -> AnyPublisher<[Movie], NetworkError>
    func fetchMovieDetails(id: Int) -> AnyPublisher<Movie, NetworkError>
}

public class APIService: APIServiceProtocol {
    public init() {}
    
    public func fetchLatestMovies() -> AnyPublisher<[Movie], NetworkError> {
        return APIClient.shared.fetch(.getLatestMovies)
    }
    
    public func fetchPopularMovies() -> AnyPublisher<[Movie], NetworkError> {
        return APIClient.shared.fetch(.getPopularMovies)
    }
    
    public func fetchMovieDetails(id: Int) -> AnyPublisher<Movie, NetworkError> {
        return APIClient.shared.fetch(.getMovieDetails(id: id))
    }
}
