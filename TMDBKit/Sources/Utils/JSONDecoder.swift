//
//  JSONDecoder.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

class CustomJSONDecoder {
    static func decoder() -> JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }
}
