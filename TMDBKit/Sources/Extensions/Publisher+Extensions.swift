//
//  Publisher+Extensions.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Combine
import Foundation

extension Publisher where Failure == URLError {
    func mapNetworkError() -> Publishers.MapError<Self, NetworkError> {
        return self.mapError { error in
            return NetworkError.networkError(error)
        }
    }
}
