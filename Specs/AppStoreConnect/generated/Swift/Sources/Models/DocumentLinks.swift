//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DocumentLinks: APIModel {

    public var _self: String

    public init(_self: String) {
        self._self = _self
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        _self = try container.decode("self")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(_self, forKey: "self")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DocumentLinks else { return false }
      guard self._self == object._self else { return false }
      return true
    }

    public static func == (lhs: DocumentLinks, rhs: DocumentLinks) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
