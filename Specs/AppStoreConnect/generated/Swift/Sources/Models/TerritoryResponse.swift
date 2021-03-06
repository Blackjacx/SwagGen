//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TerritoryResponse: APIModel {

    public var data: Territory

    public var links: DocumentLinks

    public init(data: Territory, links: DocumentLinks) {
        self.data = data
        self.links = links
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decode("data")
        links = try container.decode("links")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(data, forKey: "data")
        try container.encode(links, forKey: "links")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TerritoryResponse else { return false }
      guard self.data == object.data else { return false }
      guard self.links == object.links else { return false }
      return true
    }

    public static func == (lhs: TerritoryResponse, rhs: TerritoryResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
