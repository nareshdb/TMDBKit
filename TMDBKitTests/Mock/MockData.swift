//
//  MockData.swift
//  TMDBKitTests
//
//  Created by Naresh Bhadresha on 03/06/24.
//

import Foundation

struct MockData {
    static let movieResponseJSON = """
    {
        "results": [
            {
                "id": 1,
                "title": "Mock Movie",
                "overview": "This is a mock movie description.",
                "release_date": "2024-01-01",
                "poster_path": "/mockPosterPath.jpg"
            }
        ]
    }
    """
}
