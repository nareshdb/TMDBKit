//
//  APIConfigurationTests.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import XCTest
@testable import MovieNetworkSDK

class APIConfigurationTests: XCTestCase {
    func testAPIConfiguration() {
        XCTAssertEqual(APIConfiguration.shared.baseURL, Environment.baseURL)
        XCTAssertEqual(APIConfiguration.shared.apiKey, Environment.apiKey)
    }
}
