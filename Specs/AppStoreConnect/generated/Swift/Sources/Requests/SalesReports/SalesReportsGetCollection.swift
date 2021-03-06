//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension AppStoreConnect.SalesReports {

    public enum SalesReportsGetCollection {

        public static let service = APIService<Response>(id: "salesReports-get_collection", tag: "SalesReports", method: "GET", path: "/v1/salesReports", hasBody: false, securityRequirements: [SecurityRequirement(type: "itc-bearer-token", scopes: [])])

        /** filter by attribute 'frequency' */
        public enum Filterfrequency: String, Codable, Equatable, CaseIterable {
            case daily = "DAILY"
            case weekly = "WEEKLY"
            case monthly = "MONTHLY"
            case yearly = "YEARLY"
        }

        /** filter by attribute 'reportSubType' */
        public enum FilterreportSubType: String, Codable, Equatable, CaseIterable {
            case summary = "SUMMARY"
            case detailed = "DETAILED"
            case optIn = "OPT_IN"
        }

        /** filter by attribute 'reportType' */
        public enum FilterreportType: String, Codable, Equatable, CaseIterable {
            case sales = "SALES"
            case preOrder = "PRE_ORDER"
            case newsstand = "NEWSSTAND"
            case subscription = "SUBSCRIPTION"
            case subscriptionEvent = "SUBSCRIPTION_EVENT"
            case subscriber = "SUBSCRIBER"
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** filter by attribute 'frequency' */
                public var filterfrequency: [Filterfrequency]

                /** filter by attribute 'reportDate' */
                public var filterreportDate: [String]?

                /** filter by attribute 'reportSubType' */
                public var filterreportSubType: [FilterreportSubType]

                /** filter by attribute 'reportType' */
                public var filterreportType: [FilterreportType]

                /** filter by attribute 'vendorNumber' */
                public var filtervendorNumber: [String]

                /** filter by attribute 'version' */
                public var filterversion: [String]?

                public init(filterfrequency: [Filterfrequency], filterreportDate: [String]? = nil, filterreportSubType: [FilterreportSubType], filterreportType: [FilterreportType], filtervendorNumber: [String], filterversion: [String]? = nil) {
                    self.filterfrequency = filterfrequency
                    self.filterreportDate = filterreportDate
                    self.filterreportSubType = filterreportSubType
                    self.filterreportType = filterreportType
                    self.filtervendorNumber = filtervendorNumber
                    self.filterversion = filterversion
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: SalesReportsGetCollection.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(filterfrequency: [Filterfrequency], filterreportDate: [String]? = nil, filterreportSubType: [FilterreportSubType], filterreportType: [FilterreportType], filtervendorNumber: [String], filterversion: [String]? = nil) {
                let options = Options(filterfrequency: filterfrequency, filterreportDate: filterreportDate, filterreportSubType: filterreportSubType, filterreportType: filterreportType, filtervendorNumber: filtervendorNumber, filterversion: filterversion)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["filter[frequency]"] = options.filterfrequency.encode().map({ String(describing: $0) }).joined(separator: ",")
                if let filterreportDate = options.filterreportDate?.joined(separator: ",") {
                  params["filter[reportDate]"] = filterreportDate
                }
                params["filter[reportSubType]"] = options.filterreportSubType.encode().map({ String(describing: $0) }).joined(separator: ",")
                params["filter[reportType]"] = options.filterreportType.encode().map({ String(describing: $0) }).joined(separator: ",")
                params["filter[vendorNumber]"] = options.filtervendorNumber.joined(separator: ",")
                if let filterversion = options.filterversion?.joined(separator: ",") {
                  params["filter[version]"] = filterversion
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = File

            /** List of SalesReports */
            case status200(File)

            /** Parameter error(s) */
            case status400(ErrorResponse)

            /** Forbidden error */
            case status403(ErrorResponse)

            public var success: File? {
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
            public var responseResult: APIResponseResult<File, ErrorResponse> {
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
                case 200: self = try .status200(decoder.decode(File.self, from: data))
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
