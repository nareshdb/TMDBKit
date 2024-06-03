//
//  APIConfiguration.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

class APIConfiguration {
    static let shared = APIConfiguration()
    
    private init() {}
    
    private var apiKey: String?
    let baseURL = URL(string: "https://api.themoviedb.org/3")!
    
    func setup(apiKey: String) {
        guard self.apiKey == nil else {
            fatalError("API key can only be set once.")
        }
        self.apiKey = apiKey
    }
    
    func getApiKey() -> String? {
        return apiKey
    }
}
