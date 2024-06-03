//
//  MockURLSession.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

class MockURLSession: URLSession {
    var nextDataTask = MockURLSessionDataTask()
    var nextData: Data?
    var nextError: Error?
    
    override func dataTask(with request: URLRequest) -> URLSessionDataTask {
        nextDataTask.resumeDidCall = {
            self.nextDataTask.completionHandler?(self.nextData, nil, self.nextError)
        }
        return nextDataTask
    }
}

class MockURLSessionDataTask: URLSessionDataTask {
    var resumeDidCall: (() -> Void)?
    
    var completionHandler: ((Data?, URLResponse?, Error?) -> Void)?
    
    override func resume() {
        resumeDidCall?()
    }
}
