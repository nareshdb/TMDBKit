//
//  APIService.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation
import Combine

protocol APIServiceProtocol {
    func fetchLatestMovies() -> AnyPublisher<[Movie], NetworkError>
    func fetchPopularMovies() -> AnyPublisher<[Movie], NetworkError>
    func fetchMovieDetails(id: Int) -> AnyPublisher<Movie, NetworkError>
}

class APIService: APIServiceProtocol {
    init() {}
    
    func fetchLatestMovies() -> AnyPublisher<[Movie], NetworkError> {
        return TMBDAPIClient.fetch(.getLatestMovies)
    }
    
    func fetchPopularMovies() -> AnyPublisher<[Movie], NetworkError> {
        return TMBDAPIClient.fetch(.getPopularMovies)
    }
    
    func fetchMovieDetails(id: Int) -> AnyPublisher<Movie, NetworkError> {
        return TMBDAPIClient.fetch(.getMovieDetails(id: id))
    }
}
