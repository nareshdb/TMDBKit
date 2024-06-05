//
//  APIConfigurationTests.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import XCTest
@testable import TMDBKit

class APIConfigurationTests: XCTestCase {
    func testAPIConfiguration() {
        XCTAssertEqual(EnvironmentConfiguration.baseURL.absoluteString, "https://api.themoviedb.org/3")
    }
}
