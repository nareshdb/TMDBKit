//
//  TMDBApiClient.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 05/06/24.
//

import Foundation
import Combine

public class TMDBApiClient {
    private let apiClient: APIClient
    
    public init(baseURL: URL, apiKey: String, session: URLSession = .shared) {
        self.apiClient = APIClient()
    }
    
    public func fetchPopularMovies() -> AnyPublisher<[Movie], TMDBError> {
        apiClient.fetch(APIRouter.getPopularMovies)
    }
    
    public func fetchTrendingMovies() -> AnyPublisher<[Movie], TMDBError> {
        apiClient.fetch(APIRouter.getPopularMovies)
    }
    
    public func fetchMovieDetail(id: Int) -> AnyPublisher<Movie, TMDBError> {
        apiClient.fetch(APIRouter.getMovieDetails(id: id))
    }
}
