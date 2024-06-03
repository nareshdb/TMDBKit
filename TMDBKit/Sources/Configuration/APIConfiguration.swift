//
//  APIConfiguration.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public class APIConfiguration {
    public static let shared = APIConfiguration()
    
    private init() {}
    
    private var apiKey: String?
    public let baseURL = URL(string: "https://api.themoviedb.org/3")!
    
    public func setup(apiKey: String) {
        guard self.apiKey == nil else {
            fatalError("API key can only be set once.")
        }
        self.apiKey = apiKey
    }
    
    public func getApiKey() -> String? {
        return apiKey
    }
}
