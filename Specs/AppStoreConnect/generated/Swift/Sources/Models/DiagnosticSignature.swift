//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DiagnosticSignature: APIModel {

    public enum `Type`: String, Codable, Equatable, CaseIterable {
        case diagnosticSignatures = "diagnosticSignatures"
    }

    public var links: ResourceLinks

    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public class Attributes: APIModel {

        public enum DiagnosticType: String, Codable, Equatable, CaseIterable {
            case diskWrites = "DISK_WRITES"
        }

        public var diagnosticType: DiagnosticType?

        public var signature: String?

        public var weight: Double?

        public init(diagnosticType: DiagnosticType? = nil, signature: String? = nil, weight: Double? = nil) {
            self.diagnosticType = diagnosticType
            self.signature = signature
            self.weight = weight
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            diagnosticType = try container.decodeIfPresent("diagnosticType")
            signature = try container.decodeIfPresent("signature")
            weight = try container.decodeIfPresent("weight")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(diagnosticType, forKey: "diagnosticType")
            try container.encodeIfPresent(signature, forKey: "signature")
            try container.encodeIfPresent(weight, forKey: "weight")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Attributes else { return false }
          guard self.diagnosticType == object.diagnosticType else { return false }
          guard self.signature == object.signature else { return false }
          guard self.weight == object.weight else { return false }
          return true
        }

        public static func == (lhs: Attributes, rhs: Attributes) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(links: ResourceLinks, id: String, type: `Type`, attributes: Attributes? = nil) {
        self.links = links
        self.id = id
        self.type = type
        self.attributes = attributes
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        links = try container.decode("links")
        id = try container.decode("id")
        type = try container.decode("type")
        attributes = try container.decodeIfPresent("attributes")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(links, forKey: "links")
        try container.encode(id, forKey: "id")
        try container.encode(type, forKey: "type")
        try container.encodeIfPresent(attributes, forKey: "attributes")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DiagnosticSignature else { return false }
      guard self.links == object.links else { return false }
      guard self.id == object.id else { return false }
      guard self.type == object.type else { return false }
      guard self.attributes == object.attributes else { return false }
      return true
    }

    public static func == (lhs: DiagnosticSignature, rhs: DiagnosticSignature) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
