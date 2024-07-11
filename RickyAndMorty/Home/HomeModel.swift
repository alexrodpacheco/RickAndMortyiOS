struct HomeModel: Codable {
    let id: Int
    let name: String
    let status: HomeCharacterStatus
    let species: String
    let type: String
    let gender: HomeCharacterGender
    let origin: HomeModelOrigin
    let location: HomeModelLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

struct HomeModelOrigin: Codable {
    let name: String
    let url: String
}

struct HomeModelLocation: Codable {
    let image: String
    let url: String
}

enum HomeCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}

enum HomeCharacterGender: String, Codable {
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}
