//
//  APIRouter.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public enum APIRouter {
    case getLatestMovies
    case getPopularMovies
    case getMovieDetails(id: Int)
    
    var request: URLRequest? {
        var urlComponents = URLComponents(string: APIClient.shared.baseURL.absoluteString)
        
        switch self {
        case .getLatestMovies:
            urlComponents?.path = "/movie/latest"
        case .getPopularMovies:
            urlComponents?.path = "/movie/popular"
        case .getMovieDetails(let id):
            urlComponents?.path = "/movie/\(id)"
        }
        
        urlComponents?.queryItems = [URLQueryItem(name: "api_key", value: APIClient.shared.apiKey)]
        
        guard let url = urlComponents?.url else { return nil }
        return URLRequest(url: url)
    }
}
