import Foundation

enum FirstEnumeration {
    case firstCase
}

enum StringEnumeration: String, Decodable {
    case hello
    case bye = "goodbye"
}

enum IntegerEnumeration: Int {
    case first, second
}

enum IntegerEnumerationWithAssignedValue: Int {
    case first = 1, second
}

func printEnum(_ `enum`: any RawRepresentable) {
    print("\(`enum`): \(`enum`.rawValue)")
}

printEnum(IntegerEnumeration.first)
printEnum(IntegerEnumeration.second)

printEnum(IntegerEnumerationWithAssignedValue.first)
printEnum(IntegerEnumerationWithAssignedValue.second)

enum EnumWithAssociatedValue {
     case string(String)
     case int(Int)
     case stringAndInt(String, Int)
     case named(name: String, order: Int)
}

// Przykład wykorzystania enum do modelowania API

enum RickAndMortyApiEndpoint {
    case character
    case location
    case episodes
}

extension RickAndMortyApiEndpoint {
    var urlString: String {
        switch self {
        case .character:
            return "https://rickandmortyapi.com/api/character"
        case .location:
            return "https://rickandmortyapi.com/api/location"
        case .episodes:
            return "https://rickandmortyapi.com/api/episode"
        }
    }
    
    var url: URL {
        URL(string: urlString)!
    }
}

var endpoint: RickAndMortyApiEndpoint
endpoint = .location

print("Enum case is: \(endpoint)")

print("URL string is: \(endpoint.urlString)")
print("URL is: \(endpoint.url)")

// Enum jako Namespace

enum RickAndMortyApi {}
extension RickAndMortyApi {
    struct Character {}
}
