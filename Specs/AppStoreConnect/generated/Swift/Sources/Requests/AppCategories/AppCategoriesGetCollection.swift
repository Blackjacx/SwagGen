//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension AppStoreConnect.AppCategories {

    public enum AppCategoriesGetCollection {

        public static let service = APIService<Response>(id: "appCategories-get_collection", tag: "AppCategories", method: "GET", path: "/v1/appCategories", hasBody: false, securityRequirements: [SecurityRequirement(type: "itc-bearer-token", scopes: [])])

        /** filter by attribute 'platforms' */
        public enum Filterplatforms: String, Codable, Equatable, CaseIterable {
            case ios = "IOS"
            case macOs = "MAC_OS"
            case tvOs = "TV_OS"
        }

        /** the fields to include for returned resources of type appCategories */
        public enum FieldsappCategories: String, Codable, Equatable, CaseIterable {
            case parent = "parent"
            case platforms = "platforms"
            case subcategories = "subcategories"
        }

        /** comma-separated list of relationships to include */
        public enum Include: String, Codable, Equatable, CaseIterable {
            case parent = "parent"
            case subcategories = "subcategories"
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** filter by attribute 'platforms' */
                public var filterplatforms: [Filterplatforms]?

                /** filter by existence or non-existence of related 'parent' */
                public var existsparent: [String]?

                /** the fields to include for returned resources of type appCategories */
                public var fieldsappCategories: [FieldsappCategories]?

                /** maximum resources per page */
                public var limit: Int?

                /** comma-separated list of relationships to include */
                public var include: [Include]?

                /** maximum number of related subcategories returned (when they are included) */
                public var limitsubcategories: Int?

                public init(filterplatforms: [Filterplatforms]? = nil, existsparent: [String]? = nil, fieldsappCategories: [FieldsappCategories]? = nil, limit: Int? = nil, include: [Include]? = nil, limitsubcategories: Int? = nil) {
                    self.filterplatforms = filterplatforms
                    self.existsparent = existsparent
                    self.fieldsappCategories = fieldsappCategories
                    self.limit = limit
                    self.include = include
                    self.limitsubcategories = limitsubcategories
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AppCategoriesGetCollection.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(filterplatforms: [Filterplatforms]? = nil, existsparent: [String]? = nil, fieldsappCategories: [FieldsappCategories]? = nil, limit: Int? = nil, include: [Include]? = nil, limitsubcategories: Int? = nil) {
                let options = Options(filterplatforms: filterplatforms, existsparent: existsparent, fieldsappCategories: fieldsappCategories, limit: limit, include: include, limitsubcategories: limitsubcategories)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let filterplatforms = options.filterplatforms?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["filter[platforms]"] = filterplatforms
                }
                if let existsparent = options.existsparent?.joined(separator: ",") {
                  params["exists[parent]"] = existsparent
                }
                if let fieldsappCategories = options.fieldsappCategories?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[appCategories]"] = fieldsappCategories
                }
                if let limit = options.limit {
                  params["limit"] = limit
                }
                if let include = options.include?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["include"] = include
                }
                if let limitsubcategories = options.limitsubcategories {
                  params["limit[subcategories]"] = limitsubcategories
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = AppCategoriesResponse

            /** List of AppCategories */
            case status200(AppCategoriesResponse)

            /** Parameter error(s) */
            case status400(ErrorResponse)

            /** Forbidden error */
            case status403(ErrorResponse)

            public var success: AppCategoriesResponse? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: ErrorResponse? {
                switch self {
                case .status400(let response): return response
                case .status403(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<AppCategoriesResponse, ErrorResponse> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status400(let response): return response
                case .status403(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status403: return 403
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status403: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(AppCategoriesResponse.self, from: data))
                case 400: self = try .status400(decoder.decode(ErrorResponse.self, from: data))
                case 403: self = try .status403(decoder.decode(ErrorResponse.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
