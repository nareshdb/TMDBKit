//
//  APIClientTests.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import XCTest
import Combine
@testable import TMDBKit

class APIClientTests: XCTestCase {
    var cancellables: Set<AnyCancellable> = []
    
    override func setUp() {
        super.setUp()
        TMDBAuth.setup(apiKey: "")
    }
    
    func testFetchLatestMovies() {
        let expectation = self.expectation(description: "Fetch latest movies")
        
        APIConfiguration.shared.setApiKey("909594533c98883408adef5d56143539")
        APIClient.shared.fetch(.getTrendingMovies)
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
    
    func testFetchPopularMovies() {
        let expectation = self.expectation(description: "Fetch popular movies")
        
        APIConfiguration.shared.setApiKey("909594533c98883408adef5d56143539")
        APIClient.shared.fetch(.getPopularMovies)
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
