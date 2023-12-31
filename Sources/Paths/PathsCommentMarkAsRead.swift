// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Comment {
    public var markAsRead: MarkAsRead {
        MarkAsRead(path: path + "/mark_as_read")
    }

    public struct MarkAsRead {
        /// Path: `/comment/mark_as_read`
        public let path: String

        public func post(_ body: LemmyKit.MarkCommentReplyAsRead? = nil) -> Request<LemmyKit.CommentReplyResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
