//
//  URLSession+Extensions.swift
//  TMDBKit
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

extension URLSession {
    func dataTaskPublisher(for url: URL) -> URLSession.DataTaskPublisher {
        dataTaskPublisher(for: URLRequest(url: url))
    }
}
