//
//  TMDBAuth.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 05/06/24.
//

import Foundation

public class TMDBAuth {
    
    static func setup(apiKey: String) {
        APIConfiguration.shared.setup(apiKey: apiKey)
    }
    
}
