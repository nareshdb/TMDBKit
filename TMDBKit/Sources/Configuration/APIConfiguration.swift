//
//  APIConfiguration.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

class APIConfiguration {
    static let shared = APIConfiguration()
    private(set) var apiKey: String?
    
    private init() {}
    
    func setApiKey(_ key: String) {
        self.apiKey = key
    }
}
