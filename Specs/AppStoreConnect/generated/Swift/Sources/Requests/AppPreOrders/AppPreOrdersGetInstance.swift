//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension AppStoreConnect.AppPreOrders {

    public enum AppPreOrdersGetInstance {

        public static let service = APIService<Response>(id: "appPreOrders-get_instance", tag: "AppPreOrders", method: "GET", path: "/v1/appPreOrders/{id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "itc-bearer-token", scopes: [])])

        /** the fields to include for returned resources of type appPreOrders */
        public enum FieldsappPreOrders: String, Codable, Equatable, CaseIterable {
            case app = "app"
            case appReleaseDate = "appReleaseDate"
            case preOrderAvailableDate = "preOrderAvailableDate"
        }

        /** comma-separated list of relationships to include */
        public enum Include: String, Codable, Equatable, CaseIterable {
            case app = "app"
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** the id of the requested resource */
                public var id: String

                /** the fields to include for returned resources of type appPreOrders */
                public var fieldsappPreOrders: [FieldsappPreOrders]?

                /** comma-separated list of relationships to include */
                public var include: [Include]?

                public init(id: String, fieldsappPreOrders: [FieldsappPreOrders]? = nil, include: [Include]? = nil) {
                    self.id = id
                    self.fieldsappPreOrders = fieldsappPreOrders
                    self.include = include
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AppPreOrdersGetInstance.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, fieldsappPreOrders: [FieldsappPreOrders]? = nil, include: [Include]? = nil) {
                let options = Options(id: id, fieldsappPreOrders: fieldsappPreOrders, include: include)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let fieldsappPreOrders = options.fieldsappPreOrders?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[appPreOrders]"] = fieldsappPreOrders
                }
                if let include = options.include?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["include"] = include
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = AppPreOrderResponse

            /** Single AppPreOrder */
            case status200(AppPreOrderResponse)

            /** Parameter error(s) */
            case status400(ErrorResponse)

            /** Forbidden error */
            case status403(ErrorResponse)

            /** Not found error */
            case status404(ErrorResponse)

            public var success: AppPreOrderResponse? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: ErrorResponse? {
                switch self {
                case .status400(let response): return response
                case .status403(let response): return response
                case .status404(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<AppPreOrderResponse, ErrorResponse> {
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
                case .status404(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status403: return 403
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status403: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(AppPreOrderResponse.self, from: data))
                case 400: self = try .status400(decoder.decode(ErrorResponse.self, from: data))
                case 403: self = try .status403(decoder.decode(ErrorResponse.self, from: data))
                case 404: self = try .status404(decoder.decode(ErrorResponse.self, from: data))
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
