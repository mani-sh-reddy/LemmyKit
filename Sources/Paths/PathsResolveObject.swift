// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var resolveObject: ResolveObject {
        ResolveObject(path: "/resolve_object")
    }

    public struct ResolveObject {
        /// Path: `/resolve_object`
        public let path: String

        public func get(resolveObject: ResolveObject? = nil) -> Request<LemmyKit.ResolveObjectResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(resolveObject))
        }

        private func makeGetQuery(_ resolveObject: ResolveObject?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(resolveObject, forKey: "ResolveObject")
            return encoder.items
        }

        public struct ResolveObject: Codable {
            /// ResolveObject.q
            public var q: String
            /// ResolveObject.auth
            public var auth: String

            public init(q: String, auth: String) {
                self.q = q
                self.auth = auth
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(q, forKey: "q")
                encoder.encode(auth, forKey: "auth")
                return encoder.items
            }
        }
    }
}
