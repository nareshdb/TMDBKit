//
//  AuthManager.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation
import Combine

class AuthManager {
    static let shared = AuthManager()
    
    private init() {}
    
    func authenticate() -> AnyPublisher<AuthToken, NetworkError> {
        guard let apiKey = APIConfiguration.shared.apiKey else {
            return Fail(error: NetworkError.invalidRequest).eraseToAnyPublisher()
        }
        
        var urlComponents = URLComponents(url: EnvironmentConfiguration.baseURL.appendingPathComponent("/authentication/token/new"), resolvingAgainstBaseURL: false)
        urlComponents?.queryItems = [URLQueryItem(name: "api_key", value: apiKey)]
        
        guard let url = urlComponents?.url else {
            return Fail(error: NetworkError.invalidRequest).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    throw NetworkError.invalidRequest
                }
                return data
            }
            .decode(type: AuthToken.self, decoder: JSONDecoder())
            .mapError { error in
                return NetworkError.map(error)
            }
            .eraseToAnyPublisher()
    }
}
