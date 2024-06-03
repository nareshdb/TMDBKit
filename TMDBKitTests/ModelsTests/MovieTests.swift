//
//  MovieTests.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import XCTest
//@testable import tmd

class MovieTests: XCTestCase {
    func testMovieDecoding() {
        let json = MockData.movieResponseJSON.data(using: .utf8)!
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
            let response = try decoder.decode(MovieResponse.self, from: json)
            XCTAssertEqual(response.results.first?.title, "Mock Movie")
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
}
