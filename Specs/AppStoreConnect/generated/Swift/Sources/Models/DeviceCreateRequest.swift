//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DeviceCreateRequest: APIModel {

    public var data: DataType

    public class DataType: APIModel {

        public enum `Type`: String, Codable, Equatable, CaseIterable {
            case devices = "devices"
        }

        public var attributes: Attributes

        public var type: `Type`

        public class Attributes: APIModel {

            public var name: String

            public var udid: String

            public var platform: BundleIdPlatform

            public init(name: String, udid: String, platform: BundleIdPlatform) {
                self.name = name
                self.udid = udid
                self.platform = platform
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                name = try container.decode("name")
                udid = try container.decode("udid")
                platform = try container.decode("platform")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(name, forKey: "name")
                try container.encode(udid, forKey: "udid")
                try container.encode(platform, forKey: "platform")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? Attributes else { return false }
              guard self.name == object.name else { return false }
              guard self.udid == object.udid else { return false }
              guard self.platform == object.platform else { return false }
              return true
            }

            public static func == (lhs: Attributes, rhs: Attributes) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public init(attributes: Attributes, type: `Type`) {
            self.attributes = attributes
            self.type = type
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            attributes = try container.decode("attributes")
            type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(attributes, forKey: "attributes")
            try container.encode(type, forKey: "type")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? DataType else { return false }
          guard self.attributes == object.attributes else { return false }
          guard self.type == object.type else { return false }
          return true
        }

        public static func == (lhs: DataType, rhs: DataType) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(data: DataType) {
        self.data = data
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decode("data")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(data, forKey: "data")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceCreateRequest else { return false }
      guard self.data == object.data else { return false }
      return true
    }

    public static func == (lhs: DeviceCreateRequest, rhs: DeviceCreateRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
