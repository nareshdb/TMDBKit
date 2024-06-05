
import Foundation

enum MovieEndpoints: APIRouter {
    case latest
    case popular

    var request: URLRequest? {
        var urlString: String
        switch self {
        case .latest:
            urlString = "https://api.themoviedb.org/3/movie/latest"
        case .popular:
            urlString = "https://api.themoviedb.org/3/movie/popular"
        }
        
        guard let url = URL(string: urlString) else { return nil }
        return URLRequest(url: url)
    }
}
