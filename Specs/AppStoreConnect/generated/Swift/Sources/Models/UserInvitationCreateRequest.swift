//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class UserInvitationCreateRequest: APIModel {

    public var data: DataType

    public class DataType: APIModel {

        public enum `Type`: String, Codable, Equatable, CaseIterable {
            case userInvitations = "userInvitations"
        }

        public var attributes: Attributes

        public var type: `Type`

        public var relationships: Relationships?

        public class Attributes: APIModel {

            public var firstName: String

            public var lastName: String

            public var roles: [UserRole]

            public var email: String

            public var allAppsVisible: Bool?

            public var provisioningAllowed: Bool?

            public init(firstName: String, lastName: String, roles: [UserRole], email: String, allAppsVisible: Bool? = nil, provisioningAllowed: Bool? = nil) {
                self.firstName = firstName
                self.lastName = lastName
                self.roles = roles
                self.email = email
                self.allAppsVisible = allAppsVisible
                self.provisioningAllowed = provisioningAllowed
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                firstName = try container.decode("firstName")
                lastName = try container.decode("lastName")
                roles = try container.decodeArray("roles")
                email = try container.decode("email")
                allAppsVisible = try container.decodeIfPresent("allAppsVisible")
                provisioningAllowed = try container.decodeIfPresent("provisioningAllowed")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(firstName, forKey: "firstName")
                try container.encode(lastName, forKey: "lastName")
                try container.encode(roles, forKey: "roles")
                try container.encode(email, forKey: "email")
                try container.encodeIfPresent(allAppsVisible, forKey: "allAppsVisible")
                try container.encodeIfPresent(provisioningAllowed, forKey: "provisioningAllowed")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? Attributes else { return false }
              guard self.firstName == object.firstName else { return false }
              guard self.lastName == object.lastName else { return false }
              guard self.roles == object.roles else { return false }
              guard self.email == object.email else { return false }
              guard self.allAppsVisible == object.allAppsVisible else { return false }
              guard self.provisioningAllowed == object.provisioningAllowed else { return false }
              return true
            }

            public static func == (lhs: Attributes, rhs: Attributes) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public class Relationships: APIModel {

            public var visibleApps: VisibleApps?

            public class VisibleApps: APIModel {

                public var data: [DataType]?

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

                public init(data: [DataType]? = nil) {
                    self.data = data
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    data = try container.decodeArrayIfPresent("data")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(data, forKey: "data")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? VisibleApps else { return false }
                  guard self.data == object.data else { return false }
                  return true
                }

                public static func == (lhs: VisibleApps, rhs: VisibleApps) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public init(visibleApps: VisibleApps? = nil) {
                self.visibleApps = visibleApps
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                visibleApps = try container.decodeIfPresent("visibleApps")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(visibleApps, forKey: "visibleApps")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? Relationships else { return false }
              guard self.visibleApps == object.visibleApps else { return false }
              return true
            }

            public static func == (lhs: Relationships, rhs: Relationships) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public init(attributes: Attributes, type: `Type`, relationships: Relationships? = nil) {
            self.attributes = attributes
            self.type = type
            self.relationships = relationships
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            attributes = try container.decode("attributes")
            type = try container.decode("type")
            relationships = try container.decodeIfPresent("relationships")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(attributes, forKey: "attributes")
            try container.encode(type, forKey: "type")
            try container.encodeIfPresent(relationships, forKey: "relationships")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? DataType else { return false }
          guard self.attributes == object.attributes else { return false }
          guard self.type == object.type else { return false }
          guard self.relationships == object.relationships else { return false }
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
      guard let object = object as? UserInvitationCreateRequest else { return false }
      guard self.data == object.data else { return false }
      return true
    }

    public static func == (lhs: UserInvitationCreateRequest, rhs: UserInvitationCreateRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
