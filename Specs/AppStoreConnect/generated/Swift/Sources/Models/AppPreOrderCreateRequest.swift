//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppPreOrderCreateRequest: APIModel {

    public var data: DataType

    public class DataType: APIModel {

        public enum `Type`: String, Codable, Equatable, CaseIterable {
            case appPreOrders = "appPreOrders"
        }

        public var relationships: Relationships

        public var type: `Type`

        public var attributes: Attributes?

        public class Relationships: APIModel {

            public var app: App

            public class App: APIModel {

                public var data: DataType

                public class DataType: APIModel {

                    public enum `Type`: String, Codable, Equatable, CaseIterable {
                        case apps = "apps"
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
                  guard let object = object as? App else { return false }
                  guard self.data == object.data else { return false }
                  return true
                }

                public static func == (lhs: App, rhs: App) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public init(app: App) {
                self.app = app
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                app = try container.decode("app")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(app, forKey: "app")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? Relationships else { return false }
              guard self.app == object.app else { return false }
              return true
            }

            public static func == (lhs: Relationships, rhs: Relationships) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public class Attributes: APIModel {

            public var appReleaseDate: DateDay?

            public init(appReleaseDate: DateDay? = nil) {
                self.appReleaseDate = appReleaseDate
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                appReleaseDate = try container.decodeIfPresent("appReleaseDate")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(appReleaseDate, forKey: "appReleaseDate")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? Attributes else { return false }
              guard self.appReleaseDate == object.appReleaseDate else { return false }
              return true
            }

            public static func == (lhs: Attributes, rhs: Attributes) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public init(relationships: Relationships, type: `Type`, attributes: Attributes? = nil) {
            self.relationships = relationships
            self.type = type
            self.attributes = attributes
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            relationships = try container.decode("relationships")
            type = try container.decode("type")
            attributes = try container.decodeIfPresent("attributes")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(relationships, forKey: "relationships")
            try container.encode(type, forKey: "type")
            try container.encodeIfPresent(attributes, forKey: "attributes")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? DataType else { return false }
          guard self.relationships == object.relationships else { return false }
          guard self.type == object.type else { return false }
          guard self.attributes == object.attributes else { return false }
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
      guard let object = object as? AppPreOrderCreateRequest else { return false }
      guard self.data == object.data else { return false }
      return true
    }

    public static func == (lhs: AppPreOrderCreateRequest, rhs: AppPreOrderCreateRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}