//
//  APIClient.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation
import Combine

class APIClient {
    
    static var shared = APIClient()
    
    func fetch<T: Decodable>(_ endpoint: APIRouter) -> AnyPublisher<T, NetworkError> {
        guard let apiKey = APIConfiguration.shared.apiKey else {
            return Fail(error: NetworkError.invalidRequest).eraseToAnyPublisher()
        }
        
        guard var request = endpoint.request else {
            return Fail(error: NetworkError.invalidRequest).eraseToAnyPublisher()
        }
        
        var urlComponents = URLComponents(url: request.url!, resolvingAgainstBaseURL: false)
        urlComponents?.queryItems = [URLQueryItem(name: "api_key", value: apiKey)]
        request.url = urlComponents?.url
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError { error in
                NetworkError.map(error)
            }
            .eraseToAnyPublisher()
    }
}
