//
//  Image.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public struct Image: Decodable {
    public let filePath: String
    public let width: Int
    public let height: Int
    public let aspectRatio: Double
    
    enum CodingKeys: String, CodingKey {
        case filePath = "file_path"
        case width
        case height
        case aspectRatio = "aspect_ratio"
    }
}
