// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var community: Community {
        Community(path: "/community")
    }

    public struct Community {
        /// Path: `/community`
        public let path: String

        public func get(getCommunity: GetCommunity? = nil) -> Request<LemmyKit.CommunityResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(getCommunity))
        }

        private func makeGetQuery(_ getCommunity: GetCommunity?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(getCommunity, forKey: "GetCommunity")
            return encoder.items
        }

        public struct GetCommunity: Codable {
            /// CommunityId
            public var id: Double?
            /// GetCommunity.name
            public var name: String?
            /// GetCommunity.auth
            public var auth: String?

            public init(id: Double? = nil, name: String? = nil, auth: String? = nil) {
                self.id = id
                self.name = name
                self.auth = auth
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(id, forKey: "id")
                encoder.encode(name, forKey: "name")
                encoder.encode(auth, forKey: "auth")
                return encoder.items
            }
        }

        public func post(_ body: LemmyKit.CreateCommunity? = nil) -> Request<Void> {
            Request(path: path, method: "POST", body: body)
        }

        public func put(_ body: LemmyKit.CreateCommunity? = nil) -> Request<Void> {
            Request(path: path, method: "PUT", body: body)
        }
    }
}