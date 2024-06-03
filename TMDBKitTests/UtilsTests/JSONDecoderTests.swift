//
//  JSONDecoderTests.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import XCTest
@testable import MovieNetworkSDK

class JSONDecoderTests: XCTestCase {
    func testCustomJSONDecoder() {
        let decoder = CustomJSONDecoder.decoder()
        XCTAssertEqual(decoder.keyDecodingStrategy, .convertFromSnakeCase)
        XCTAssertEqual(decoder.dateDecodingStrategy, .iso8601)
    }
}
