//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Road {

    /** Gets a list of active disruptions filtered by disruption Ids. */
    public enum RoadDisruptionById {

        public static let service = APIService<Response>(id: "Road_DisruptionById", tag: "Road", method: "GET", path: "/Road/all/Disruption/{disruptionIds}", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Comma-separated list of disruption identifiers to filter by. */
                public var disruptionIds: [String]

                /** Optional, defaults to false. When true, removes every property/node except for id, point, severity, severityDescription, startDate, endDate, corridor details, location and comments. */
                public var stripContent: Bool?

                public init(disruptionIds: [String], stripContent: Bool? = nil) {
                    self.disruptionIds = disruptionIds
                    self.stripContent = stripContent
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: RoadDisruptionById.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(disruptionIds: [String], stripContent: Bool? = nil) {
                let options = Options(disruptionIds: disruptionIds, stripContent: stripContent)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "disruptionIds" + "}", with: "\(self.options.disruptionIds.joined(separator: ","))")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let stripContent = options.stripContent {
                  params["stripContent"] = stripContent
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = RoadDisruption

            /** OK */
            case status200(RoadDisruption)

            public var success: RoadDisruption? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(RoadDisruption.self, from: data))
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
