//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppStoreVersionResponse: APIModel {

    public var data: AppStoreVersion

    public var links: DocumentLinks

    public var included: [Included]?

    public init(data: AppStoreVersion, links: DocumentLinks, included: [Included]? = nil) {
        self.data = data
        self.links = links
        self.included = included
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decode("data")
        links = try container.decode("links")
        included = try container.decodeArrayIfPresent("included")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(data, forKey: "data")
        try container.encode(links, forKey: "links")
        try container.encodeIfPresent(included, forKey: "included")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppStoreVersionResponse else { return false }
      guard self.data == object.data else { return false }
      guard self.links == object.links else { return false }
      guard self.included == object.included else { return false }
      return true
    }

    public static func == (lhs: AppStoreVersionResponse, rhs: AppStoreVersionResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
