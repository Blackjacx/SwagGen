//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension AppStoreConnect.BetaLicenseAgreements {

    public enum BetaLicenseAgreementsGetCollection {

        public static let service = APIService<Response>(id: "betaLicenseAgreements-get_collection", tag: "BetaLicenseAgreements", method: "GET", path: "/v1/betaLicenseAgreements", hasBody: false, securityRequirements: [SecurityRequirement(type: "itc-bearer-token", scopes: [])])

        /** the fields to include for returned resources of type betaLicenseAgreements */
        public enum FieldsbetaLicenseAgreements: String, Codable, Equatable, CaseIterable {
            case agreementText = "agreementText"
            case app = "app"
        }

        /** comma-separated list of relationships to include */
        public enum Include: String, Codable, Equatable, CaseIterable {
            case app = "app"
        }

        /** the fields to include for returned resources of type apps */
        public enum Fieldsapps: String, Codable, Equatable, CaseIterable {
            case appInfos = "appInfos"
            case appStoreVersions = "appStoreVersions"
            case availableInNewTerritories = "availableInNewTerritories"
            case availableTerritories = "availableTerritories"
            case betaAppLocalizations = "betaAppLocalizations"
            case betaAppReviewDetail = "betaAppReviewDetail"
            case betaGroups = "betaGroups"
            case betaLicenseAgreement = "betaLicenseAgreement"
            case betaTesters = "betaTesters"
            case builds = "builds"
            case bundleId = "bundleId"
            case contentRightsDeclaration = "contentRightsDeclaration"
            case endUserLicenseAgreement = "endUserLicenseAgreement"
            case gameCenterEnabledVersions = "gameCenterEnabledVersions"
            case inAppPurchases = "inAppPurchases"
            case isOrEverWasMadeForKids = "isOrEverWasMadeForKids"
            case name = "name"
            case perfPowerMetrics = "perfPowerMetrics"
            case preOrder = "preOrder"
            case preReleaseVersions = "preReleaseVersions"
            case prices = "prices"
            case primaryLocale = "primaryLocale"
            case sku = "sku"
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** filter by id(s) of related 'app' */
                public var filterapp: [String]?

                /** the fields to include for returned resources of type betaLicenseAgreements */
                public var fieldsbetaLicenseAgreements: [FieldsbetaLicenseAgreements]?

                /** maximum resources per page */
                public var limit: Int?

                /** comma-separated list of relationships to include */
                public var include: [Include]?

                /** the fields to include for returned resources of type apps */
                public var fieldsapps: [Fieldsapps]?

                public init(filterapp: [String]? = nil, fieldsbetaLicenseAgreements: [FieldsbetaLicenseAgreements]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsapps: [Fieldsapps]? = nil) {
                    self.filterapp = filterapp
                    self.fieldsbetaLicenseAgreements = fieldsbetaLicenseAgreements
                    self.limit = limit
                    self.include = include
                    self.fieldsapps = fieldsapps
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: BetaLicenseAgreementsGetCollection.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(filterapp: [String]? = nil, fieldsbetaLicenseAgreements: [FieldsbetaLicenseAgreements]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsapps: [Fieldsapps]? = nil) {
                let options = Options(filterapp: filterapp, fieldsbetaLicenseAgreements: fieldsbetaLicenseAgreements, limit: limit, include: include, fieldsapps: fieldsapps)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let filterapp = options.filterapp?.joined(separator: ",") {
                  params["filter[app]"] = filterapp
                }
                if let fieldsbetaLicenseAgreements = options.fieldsbetaLicenseAgreements?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[betaLicenseAgreements]"] = fieldsbetaLicenseAgreements
                }
                if let limit = options.limit {
                  params["limit"] = limit
                }
                if let include = options.include?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["include"] = include
                }
                if let fieldsapps = options.fieldsapps?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[apps]"] = fieldsapps
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = BetaLicenseAgreementsResponse

            /** List of BetaLicenseAgreements */
            case status200(BetaLicenseAgreementsResponse)

            /** Parameter error(s) */
            case status400(ErrorResponse)

            /** Forbidden error */
            case status403(ErrorResponse)

            public var success: BetaLicenseAgreementsResponse? {
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
            public var responseResult: APIResponseResult<BetaLicenseAgreementsResponse, ErrorResponse> {
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
                case 200: self = try .status200(decoder.decode(BetaLicenseAgreementsResponse.self, from: data))
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
