import Foundation

struct EndpointsRequest {
    private var baseURL = "https://rickandmortyapi.com/api/"
    private let endpoint: Endpoints
    private let parameters: [String : String]
    
    var endpoints: String {
        switch endpoint {
        case .character:
            return "Character"
        }
    }
    
    var queryParameters: [String : String] {
        if parameters.isEmpty {
            return [:]
        } else {
            baseURL.append("?")
            return parameters
        }
    }
    
    func buildingEndpoint() -> String {
        return "\(baseURL) + \(endpoints)/ + queryParameters"
    }
}
