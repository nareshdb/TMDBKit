//
//  MockAPIClient.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation
import Combine
@testable import TMDBKit

class MockAPIClient: APIClient {
    var mockResponse: Any?
    var mockError: NetworkError?
    
    override func fetch<T>(_ endpoint: APIRouter) -> AnyPublisher<T, NetworkError> where T : Decodable {
        if let mockResponse = mockResponse as? T {
            return Just(mockResponse)
                .setFailureType(to: NetworkError.self)
                .eraseToAnyPublisher()
        } else if let mockError = mockError {
            return Fail(error: mockError).eraseToAnyPublisher()
        } else {
            return Fail(error: NetworkError.invalidRequest).eraseToAnyPublisher()
        }
    }
}
