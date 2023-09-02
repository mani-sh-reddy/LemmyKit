// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var site: Site {
        Site(path: "/site")
    }

    public struct Site {
        /// Path: `/site`
        public let path: String

        /// Retrieve General Site info about this instance and possibly the authenticated user
        public func get(getSite: GetSite? = nil) -> Request<LemmyKit.SiteResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(getSite))
        }

        private func makeGetQuery(_ getSite: GetSite?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(getSite, forKey: "GetSite")
            return encoder.items
        }

        public struct GetSite: Codable {
            /// GetSite.auth
            public var auth: String?

            public init(auth: String? = nil) {
                self.auth = auth
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(auth, forKey: "auth")
                return encoder.items
            }
        }

        public func post(_ body: LemmyKit.CreateSite? = nil) -> Request<Void> {
            Request(path: path, method: "POST", body: body)
        }

        /// Update the /site endpoint
        public func put(_ body: LemmyKit.EditSite? = nil) -> Request<Void> {
            Request(path: path, method: "PUT", body: body)
        }
    }
}
