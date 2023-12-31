// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Post.Report {
    public var list: List {
        List(path: path + "/list")
    }

    public struct List {
        /// Path: `/post/report/list`
        public let path: String

        public func get(listPostReports: ListPostReports? = nil) -> Request<LemmyKit.ListPostReportsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(listPostReports))
        }

        private func makeGetQuery(_ listPostReports: ListPostReports?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(listPostReports, forKey: "ListPostReports")
            return encoder.items
        }

        public struct ListPostReports: Codable {
            /// ListPostReports.page
            public var page: Double?
            /// ListPostReports.limit
            public var limit: Double?
            /// ListPostReports.unresolved_only
            public var isUnresolvedOnly: Bool?
            public var communityID: Double?
            /// ListPostReports.auth
            public var auth: String

            public init(page: Double? = nil, limit: Double? = nil, isUnresolvedOnly: Bool? = nil, communityID: Double? = nil, auth: String) {
                self.page = page
                self.limit = limit
                self.isUnresolvedOnly = isUnresolvedOnly
                self.communityID = communityID
                self.auth = auth
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(page, forKey: "page")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(isUnresolvedOnly, forKey: "unresolved_only")
                encoder.encode(communityID, forKey: "community_id")
                encoder.encode(auth, forKey: "auth")
                return encoder.items
            }
        }
    }
}
