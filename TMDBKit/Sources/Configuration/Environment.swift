//
//  Environment.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public enum Environment: String {
    case development = "Development"
    case staging = "Staging"
    case production = "Production"
    
    public static var current: Environment {
        #if DEBUG
        return .development
        #elseif STAGING
        return .staging
        #else
        return .production
        #endif
    }
}
