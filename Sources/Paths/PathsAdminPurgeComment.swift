// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Admin.Purge {
    public var comment: Comment {
        Comment(path: path + "/comment")
    }

    public struct Comment {
        /// Path: `/admin/purge/comment`
        public let path: String

        public func post(_ body: LemmyKit.PurgeComment? = nil) -> Request<LemmyKit.PurgeItemResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
