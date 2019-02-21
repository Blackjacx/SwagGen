//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Line {

    /** Gets the line status of for all lines for the given modes */
    public enum LineStatusByMode {

        public static let service = APIService<Response>(id: "Line_StatusByMode", tag: "Line", method: "GET", path: "/Line/Mode/{modes}/Status", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma-separated list of modes to filter by. e.g. tube,dlr */
                public var modes: [String]

                /** Include details of the disruptions that are causing the line status including the affected stops and routes */
                public var detail: Bool?

                public init(modes: [String], detail: Bool? = nil) {
                    self.modes = modes
                    self.detail = detail
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: LineStatusByMode.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(modes: [String], detail: Bool? = nil) {
                let options = Options(modes: modes, detail: detail)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "modes" + "}", with: "\(self.options.modes.joined(separator: ","))")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let detail = options.detail {
                  params["detail"] = detail
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [Line]

            /** OK */
            case status200([Line])

            public var success: [Line]? {
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
                case 200: self = try .status200(decoder.decode([Line].self, from: data))
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
