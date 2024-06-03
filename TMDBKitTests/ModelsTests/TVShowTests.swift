//
//  TVShowTests.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import XCTest
@testable import MovieNetworkSDK

class TVShowTests: XCTestCase {
    func testTVShowDecoding() {
        let json = """
        {
            "results": [
                {
                    "id": 1,
                    "name": "Mock TV Show",
                    "overview": "This is a mock TV show description.",
                    "first_air_date": "2024-01-01",
                    "poster_path": "/mockPosterPath.jpg"
                }
            ]
        }
        """.data(using: .utf8)!
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
            let response = try decoder.decode(TVShowResponse.self, from: json)
            XCTAssertEqual(response.results.first?.name, "Mock TV Show")
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
}
