//
//  Combine+Extensions.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Combine
import Foundation

extension Publisher {
    func receiveOnMainThread() -> AnyPublisher<Output, Failure> {
        return self.receive(on: DispatchQueue.main).eraseToAnyPublisher()
    }
}
