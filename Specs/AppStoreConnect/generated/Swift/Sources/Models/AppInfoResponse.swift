//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppInfoResponse: APIModel {

    public var data: AppInfo

    public var links: DocumentLinks

    public var included: [Included]?

    public init(data: AppInfo, links: DocumentLinks, included: [Included]? = nil) {
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
      guard let object = object as? AppInfoResponse else { return false }
      guard self.data == object.data else { return false }
      guard self.links == object.links else { return false }
      guard self.included == object.included else { return false }
      return true
    }

    public static func == (lhs: AppInfoResponse, rhs: AppInfoResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
