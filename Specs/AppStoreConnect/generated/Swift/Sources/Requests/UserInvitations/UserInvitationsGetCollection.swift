//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension AppStoreConnect.UserInvitations {

    public enum UserInvitationsGetCollection {

        public static let service = APIService<Response>(id: "userInvitations-get_collection", tag: "UserInvitations", method: "GET", path: "/v1/userInvitations", hasBody: false, securityRequirements: [SecurityRequirement(type: "itc-bearer-token", scopes: [])])

        /** filter by attribute 'roles' */
        public enum Filterroles: String, Codable, Equatable, CaseIterable {
            case admin = "ADMIN"
            case finance = "FINANCE"
            case technical = "TECHNICAL"
            case accountHolder = "ACCOUNT_HOLDER"
            case readOnly = "READ_ONLY"
            case sales = "SALES"
            case marketing = "MARKETING"
            case appManager = "APP_MANAGER"
            case developer = "DEVELOPER"
            case accessToReports = "ACCESS_TO_REPORTS"
            case customerSupport = "CUSTOMER_SUPPORT"
        }

        /** comma-separated list of sort expressions; resources will be sorted as specified */
        public enum Sort: String, Codable, Equatable, CaseIterable {
            case email = "email"
            case _email = "-email"
            case lastName = "lastName"
            case _lastName = "-lastName"
        }

        /** the fields to include for returned resources of type userInvitations */
        public enum FieldsuserInvitations: String, Codable, Equatable, CaseIterable {
            case allAppsVisible = "allAppsVisible"
            case email = "email"
            case expirationDate = "expirationDate"
            case firstName = "firstName"
            case lastName = "lastName"
            case provisioningAllowed = "provisioningAllowed"
            case roles = "roles"
            case visibleApps = "visibleApps"
        }

        /** comma-separated list of relationships to include */
        public enum Include: String, Codable, Equatable, CaseIterable {
            case visibleApps = "visibleApps"
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

                /** filter by attribute 'email' */
                public var filteremail: [String]?

                /** filter by attribute 'roles' */
                public var filterroles: [Filterroles]?

                /** filter by id(s) of related 'visibleApps' */
                public var filtervisibleApps: [String]?

                /** comma-separated list of sort expressions; resources will be sorted as specified */
                public var sort: [Sort]?

                /** the fields to include for returned resources of type userInvitations */
                public var fieldsuserInvitations: [FieldsuserInvitations]?

                /** maximum resources per page */
                public var limit: Int?

                /** comma-separated list of relationships to include */
                public var include: [Include]?

                /** the fields to include for returned resources of type apps */
                public var fieldsapps: [Fieldsapps]?

                /** maximum number of related visibleApps returned (when they are included) */
                public var limitvisibleApps: Int?

                public init(filteremail: [String]? = nil, filterroles: [Filterroles]? = nil, filtervisibleApps: [String]? = nil, sort: [Sort]? = nil, fieldsuserInvitations: [FieldsuserInvitations]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsapps: [Fieldsapps]? = nil, limitvisibleApps: Int? = nil) {
                    self.filteremail = filteremail
                    self.filterroles = filterroles
                    self.filtervisibleApps = filtervisibleApps
                    self.sort = sort
                    self.fieldsuserInvitations = fieldsuserInvitations
                    self.limit = limit
                    self.include = include
                    self.fieldsapps = fieldsapps
                    self.limitvisibleApps = limitvisibleApps
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: UserInvitationsGetCollection.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(filteremail: [String]? = nil, filterroles: [Filterroles]? = nil, filtervisibleApps: [String]? = nil, sort: [Sort]? = nil, fieldsuserInvitations: [FieldsuserInvitations]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsapps: [Fieldsapps]? = nil, limitvisibleApps: Int? = nil) {
                let options = Options(filteremail: filteremail, filterroles: filterroles, filtervisibleApps: filtervisibleApps, sort: sort, fieldsuserInvitations: fieldsuserInvitations, limit: limit, include: include, fieldsapps: fieldsapps, limitvisibleApps: limitvisibleApps)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let filteremail = options.filteremail?.joined(separator: ",") {
                  params["filter[email]"] = filteremail
                }
                if let filterroles = options.filterroles?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["filter[roles]"] = filterroles
                }
                if let filtervisibleApps = options.filtervisibleApps?.joined(separator: ",") {
                  params["filter[visibleApps]"] = filtervisibleApps
                }
                if let sort = options.sort?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["sort"] = sort
                }
                if let fieldsuserInvitations = options.fieldsuserInvitations?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[userInvitations]"] = fieldsuserInvitations
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
                if let limitvisibleApps = options.limitvisibleApps {
                  params["limit[visibleApps]"] = limitvisibleApps
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = UserInvitationsResponse

            /** List of UserInvitations */
            case status200(UserInvitationsResponse)

            /** Parameter error(s) */
            case status400(ErrorResponse)

            /** Forbidden error */
            case status403(ErrorResponse)

            public var success: UserInvitationsResponse? {
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
            public var responseResult: APIResponseResult<UserInvitationsResponse, ErrorResponse> {
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
                case 200: self = try .status200(decoder.decode(UserInvitationsResponse.self, from: data))
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
