// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Post {
    public var markAsRead: MarkAsRead {
        MarkAsRead(path: path + "/mark_as_read")
    }

    public struct MarkAsRead {
        /// Path: `/post/mark_as_read`
        public let path: String

        public func post(_ body: LemmyKit.MarkPostAsRead? = nil) -> Request<LemmyKit.PostResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
