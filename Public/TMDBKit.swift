
import Foundation
import Combine

public class TMDBKit {
    public static let shared = TMDBKit()
    
    private init() {}

    public func setApiKey(_ key: String) {
        APIConfiguration.shared.setApiKey(key)
    }

    public func fetchLatestMovies() -> AnyPublisher<MovieResponse, NetworkError> {
        return APIClient.fetch(MovieEndpoints.latest)
    }

    public func fetchPopularMovies() -> AnyPublisher<MovieResponse, NetworkError> {
        return APIClient.fetch(MovieEndpoints.popular)
    }
    
    // Add more methods as needed for other endpoints
}
