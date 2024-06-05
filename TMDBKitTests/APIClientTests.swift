//
//  APIClientTests.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import XCTest
import Combine
@testable import MovieNetworkSDK

class APIClientTests: XCTestCase {
    var cancellables: Set<AnyCancellable> = []
    
    func testFetchLatestMovies() {
        let expectation = self.expectation(description: "Fetch latest movies")
        
        TMBDAPIClient.fetch(MovieEndpoints.latest)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    XCTFail("Error: \(error)")
                }
            }, receiveValue: { (response: MovieResponse) in
                XCTAssertFalse(response.results.isEmpty, "Expected non-empty results")
                expectation.fulfill()
            })
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5.0, handler: nil)
    }
}
