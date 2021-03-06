//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class BuildIndividualTestersLinkagesResponse: APIModel {

    public var data: [DataType]

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public class DataType: APIModel {

        public enum `Type`: String, Codable, Equatable, CaseIterable {
            case betaTesters = "betaTesters"
        }

        public var id: String

        public var type: `Type`

        public init(id: String, type: `Type`) {
            self.id = id
            self.type = type
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            id = try container.decode("id")
            type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(id, forKey: "id")
            try container.encode(type, forKey: "type")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? DataType else { return false }
          guard self.id == object.id else { return false }
          guard self.type == object.type else { return false }
          return true
        }

        public static func == (lhs: DataType, rhs: DataType) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(data: [DataType], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArray("data")
        links = try container.decode("links")
        meta = try container.decodeIfPresent("meta")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(data, forKey: "data")
        try container.encode(links, forKey: "links")
        try container.encodeIfPresent(meta, forKey: "meta")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? BuildIndividualTestersLinkagesResponse else { return false }
      guard self.data == object.data else { return false }
      guard self.links == object.links else { return false }
      guard self.meta == object.meta else { return false }
      return true
    }

    public static func == (lhs: BuildIndividualTestersLinkagesResponse, rhs: BuildIndividualTestersLinkagesResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
