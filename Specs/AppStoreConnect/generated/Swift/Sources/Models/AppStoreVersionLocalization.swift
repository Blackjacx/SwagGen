//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppStoreVersionLocalization: APIModel {

    public enum `Type`: String, Codable, Equatable, CaseIterable {
        case appStoreVersionLocalizations = "appStoreVersionLocalizations"
    }

    public var links: ResourceLinks

    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public class Attributes: APIModel {

        public var description: String?

        public var keywords: String?

        public var locale: String?

        public var marketingUrl: URL?

        public var promotionalText: String?

        public var supportUrl: URL?

        public var whatsNew: String?

        public init(description: String? = nil, keywords: String? = nil, locale: String? = nil, marketingUrl: URL? = nil, promotionalText: String? = nil, supportUrl: URL? = nil, whatsNew: String? = nil) {
            self.description = description
            self.keywords = keywords
            self.locale = locale
            self.marketingUrl = marketingUrl
            self.promotionalText = promotionalText
            self.supportUrl = supportUrl
            self.whatsNew = whatsNew
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            description = try container.decodeIfPresent("description")
            keywords = try container.decodeIfPresent("keywords")
            locale = try container.decodeIfPresent("locale")
            marketingUrl = try container.decodeIfPresent("marketingUrl")
            promotionalText = try container.decodeIfPresent("promotionalText")
            supportUrl = try container.decodeIfPresent("supportUrl")
            whatsNew = try container.decodeIfPresent("whatsNew")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(description, forKey: "description")
            try container.encodeIfPresent(keywords, forKey: "keywords")
            try container.encodeIfPresent(locale, forKey: "locale")
            try container.encodeIfPresent(marketingUrl, forKey: "marketingUrl")
            try container.encodeIfPresent(promotionalText, forKey: "promotionalText")
            try container.encodeIfPresent(supportUrl, forKey: "supportUrl")
            try container.encodeIfPresent(whatsNew, forKey: "whatsNew")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Attributes else { return false }
          guard self.description == object.description else { return false }
          guard self.keywords == object.keywords else { return false }
          guard self.locale == object.locale else { return false }
          guard self.marketingUrl == object.marketingUrl else { return false }
          guard self.promotionalText == object.promotionalText else { return false }
          guard self.supportUrl == object.supportUrl else { return false }
          guard self.whatsNew == object.whatsNew else { return false }
          return true
        }

        public static func == (lhs: Attributes, rhs: Attributes) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public class Relationships: APIModel {

        public var appPreviewSets: AppPreviewSets?

        public var appScreenshotSets: AppScreenshotSets?

        public var appStoreVersion: AppStoreVersion?

        public class AppPreviewSets: APIModel {

            public var data: [DataType]?

            public var links: Links?

            public var meta: PagingInformation?

            public class DataType: APIModel {

                public enum `Type`: String, Codable, Equatable, CaseIterable {
                    case appPreviewSets = "appPreviewSets"
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

            public class Links: APIModel {

                public var related: String?

                public var _self: String?

                public init(related: String? = nil, _self: String? = nil) {
                    self.related = related
                    self._self = _self
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    related = try container.decodeIfPresent("related")
                    _self = try container.decodeIfPresent("self")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(related, forKey: "related")
                    try container.encodeIfPresent(_self, forKey: "self")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Links else { return false }
                  guard self.related == object.related else { return false }
                  guard self._self == object._self else { return false }
                  return true
                }

                public static func == (lhs: Links, rhs: Links) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public init(data: [DataType]? = nil, links: Links? = nil, meta: PagingInformation? = nil) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                data = try container.decodeArrayIfPresent("data")
                links = try container.decodeIfPresent("links")
                meta = try container.decodeIfPresent("meta")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(data, forKey: "data")
                try container.encodeIfPresent(links, forKey: "links")
                try container.encodeIfPresent(meta, forKey: "meta")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? AppPreviewSets else { return false }
              guard self.data == object.data else { return false }
              guard self.links == object.links else { return false }
              guard self.meta == object.meta else { return false }
              return true
            }

            public static func == (lhs: AppPreviewSets, rhs: AppPreviewSets) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public class AppScreenshotSets: APIModel {

            public var data: [DataType]?

            public var links: Links?

            public var meta: PagingInformation?

            public class DataType: APIModel {

                public enum `Type`: String, Codable, Equatable, CaseIterable {
                    case appScreenshotSets = "appScreenshotSets"
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

            public class Links: APIModel {

                public var related: String?

                public var _self: String?

                public init(related: String? = nil, _self: String? = nil) {
                    self.related = related
                    self._self = _self
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    related = try container.decodeIfPresent("related")
                    _self = try container.decodeIfPresent("self")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(related, forKey: "related")
                    try container.encodeIfPresent(_self, forKey: "self")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Links else { return false }
                  guard self.related == object.related else { return false }
                  guard self._self == object._self else { return false }
                  return true
                }

                public static func == (lhs: Links, rhs: Links) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public init(data: [DataType]? = nil, links: Links? = nil, meta: PagingInformation? = nil) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                data = try container.decodeArrayIfPresent("data")
                links = try container.decodeIfPresent("links")
                meta = try container.decodeIfPresent("meta")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(data, forKey: "data")
                try container.encodeIfPresent(links, forKey: "links")
                try container.encodeIfPresent(meta, forKey: "meta")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? AppScreenshotSets else { return false }
              guard self.data == object.data else { return false }
              guard self.links == object.links else { return false }
              guard self.meta == object.meta else { return false }
              return true
            }

            public static func == (lhs: AppScreenshotSets, rhs: AppScreenshotSets) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public class AppStoreVersion: APIModel {

            public var data: DataType?

            public var links: Links?

            public class DataType: APIModel {

                public enum `Type`: String, Codable, Equatable, CaseIterable {
                    case appStoreVersions = "appStoreVersions"
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

            public class Links: APIModel {

                public var related: String?

                public var _self: String?

                public init(related: String? = nil, _self: String? = nil) {
                    self.related = related
                    self._self = _self
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    related = try container.decodeIfPresent("related")
                    _self = try container.decodeIfPresent("self")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(related, forKey: "related")
                    try container.encodeIfPresent(_self, forKey: "self")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Links else { return false }
                  guard self.related == object.related else { return false }
                  guard self._self == object._self else { return false }
                  return true
                }

                public static func == (lhs: Links, rhs: Links) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public init(data: DataType? = nil, links: Links? = nil) {
                self.data = data
                self.links = links
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                data = try container.decodeIfPresent("data")
                links = try container.decodeIfPresent("links")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(data, forKey: "data")
                try container.encodeIfPresent(links, forKey: "links")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? AppStoreVersion else { return false }
              guard self.data == object.data else { return false }
              guard self.links == object.links else { return false }
              return true
            }

            public static func == (lhs: AppStoreVersion, rhs: AppStoreVersion) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public init(appPreviewSets: AppPreviewSets? = nil, appScreenshotSets: AppScreenshotSets? = nil, appStoreVersion: AppStoreVersion? = nil) {
            self.appPreviewSets = appPreviewSets
            self.appScreenshotSets = appScreenshotSets
            self.appStoreVersion = appStoreVersion
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            appPreviewSets = try container.decodeIfPresent("appPreviewSets")
            appScreenshotSets = try container.decodeIfPresent("appScreenshotSets")
            appStoreVersion = try container.decodeIfPresent("appStoreVersion")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(appPreviewSets, forKey: "appPreviewSets")
            try container.encodeIfPresent(appScreenshotSets, forKey: "appScreenshotSets")
            try container.encodeIfPresent(appStoreVersion, forKey: "appStoreVersion")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Relationships else { return false }
          guard self.appPreviewSets == object.appPreviewSets else { return false }
          guard self.appScreenshotSets == object.appScreenshotSets else { return false }
          guard self.appStoreVersion == object.appStoreVersion else { return false }
          return true
        }

        public static func == (lhs: Relationships, rhs: Relationships) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(links: ResourceLinks, id: String, type: `Type`, attributes: Attributes? = nil, relationships: Relationships? = nil) {
        self.links = links
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        links = try container.decode("links")
        id = try container.decode("id")
        type = try container.decode("type")
        attributes = try container.decodeIfPresent("attributes")
        relationships = try container.decodeIfPresent("relationships")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(links, forKey: "links")
        try container.encode(id, forKey: "id")
        try container.encode(type, forKey: "type")
        try container.encodeIfPresent(attributes, forKey: "attributes")
        try container.encodeIfPresent(relationships, forKey: "relationships")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppStoreVersionLocalization else { return false }
      guard self.links == object.links else { return false }
      guard self.id == object.id else { return false }
      guard self.type == object.type else { return false }
      guard self.attributes == object.attributes else { return false }
      guard self.relationships == object.relationships else { return false }
      return true
    }

    public static func == (lhs: AppStoreVersionLocalization, rhs: AppStoreVersionLocalization) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
