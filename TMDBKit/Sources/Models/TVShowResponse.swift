//
//  TVShowResponse.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

public struct TVShowResponse: Decodable {
    public let results: [TVShow]
}
