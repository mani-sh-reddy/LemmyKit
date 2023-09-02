// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.User {
    public var replies: Replies {
        Replies(path: path + "/replies")
    }

    public struct Replies {
        /// Path: `/user/replies`
        public let path: String

        public func get(getCaptcha: GetCaptcha? = nil) -> Request<LemmyKit.GetRepliesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(getCaptcha))
        }

        private func makeGetQuery(_ getCaptcha: GetCaptcha?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(getCaptcha, forKey: "GetCaptcha")
            return encoder.items
        }

        /// GetReplies
        public struct GetCaptcha: Codable {
            /// CommentSortType
            public var sort: Sort?
            /// GetReplies.page
            public var page: Double?
            /// GetReplies.limit
            public var limit: Double?
            /// GetReplies.unread_only
            public var isUnreadOnly: Bool?
            /// GetReplies.auth
            public var auth: String

            /// CommentSortType
            public enum Sort: String, Codable, CaseIterable {
                case hot = "Hot"
                case top = "Top"
                case new = "New"
                case old = "Old"
            }

            public init(sort: Sort? = nil, page: Double? = nil, limit: Double? = nil, isUnreadOnly: Bool? = nil, auth: String) {
                self.sort = sort
                self.page = page
                self.limit = limit
                self.isUnreadOnly = isUnreadOnly
                self.auth = auth
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(sort, forKey: "sort")
                encoder.encode(page, forKey: "page")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(isUnreadOnly, forKey: "unread_only")
                encoder.encode(auth, forKey: "auth")
                return encoder.items
            }
        }
    }
}
