//
//  APIRouter.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

enum APIRouter {
    case getLatestMovies
    case getPopularMovies
    case getMovieDetails(id: Int)
    
    var request: URLRequest? {
        var urlComponents = URLComponents(string: APIConfiguration.shared.baseURL.absoluteString)
        
        switch self {
        case .getLatestMovies:
            urlComponents?.path = "/movie/latest"
        case .getPopularMovies:
            urlComponents?.path = "/movie/popular"
        case .getMovieDetails(let id):
            urlComponents?.path = "/movie/\(id)"
        }
        
        urlComponents?.queryItems = [URLQueryItem(name: "api_key", value: APIConfiguration.shared.getApiKey())]
        
        guard let url = urlComponents?.url else { return nil }
        return URLRequest(url: url)
    }
}
