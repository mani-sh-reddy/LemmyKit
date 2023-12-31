// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Post {
    public var delete: Delete {
        Delete(path: path + "/delete")
    }

    public struct Delete {
        /// Path: `/post/delete`
        public let path: String

        public func post(_ body: LemmyKit.DeletePost? = nil) -> Request<LemmyKit.PostResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
