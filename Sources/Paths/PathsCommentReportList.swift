// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Comment.Report {
    public var list: List {
        List(path: path + "/list")
    }

    public struct List {
        /// Path: `/comment/report/list`
        public let path: String

        public func get(listCommentReports: ListCommentReports? = nil) -> Request<LemmyKit.ListCommentReportsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(listCommentReports))
        }

        private func makeGetQuery(_ listCommentReports: ListCommentReports?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(listCommentReports, forKey: "ListCommentReports")
            return encoder.items
        }

        public struct ListCommentReports: Codable {
            /// ListCommentReports.page
            public var page: Double?
            /// ListCommentReports.limit
            public var limit: Double?
            /// ListCommentReports.unresolved_only
            public var isUnresolvedOnly: Bool?
            public var communityID: Double?
            /// ListCommentReports.auth
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
