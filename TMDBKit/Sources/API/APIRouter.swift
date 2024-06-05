//
//  APIRouter.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

enum APIRouter {
    case getTrendingMovies
    case getPopularMovies
    case getMovieDetails(id: Int)
    
    var request: URLRequest? {
        var urlString: String
        
        switch self {
        case .getTrendingMovies:
            urlString = "https://api.themoviedb.org/3/trending/movie/week"
        case .getPopularMovies:
            urlString = "https://api.themoviedb.org/3/movie/popular"
        case .getMovieDetails(let id):
            urlString = "https://api.themoviedb.org/3/movie/\(id)"
        }
        
        guard var urlComponents = URLComponents(string: urlString) else { return nil }
        urlComponents.queryItems = [URLQueryItem(name: "api_key", value: APIConfiguration.shared.apiKey)]
        
        return urlComponents.url.map { URLRequest(url: $0) }
    }
}
