//
//  AuthToken.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

import Foundation

public struct AuthToken: Codable {
    public let success: Bool
    public let expiresAt: String
    public let requestToken: String
    
    enum CodingKeys: String, CodingKey {
        case success
        case expiresAt = "expires_at"
        case requestToken = "request_token"
    }
}
