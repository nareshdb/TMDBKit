//
//  Image.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

struct Image: Decodable {
    let filePath: String
    let width: Int
    let height: Int
    let aspectRatio: Double
    
    enum CodingKeys: String, CodingKey {
        case filePath = "file_path"
        case width
        case height
        case aspectRatio = "aspect_ratio"
    }
}
