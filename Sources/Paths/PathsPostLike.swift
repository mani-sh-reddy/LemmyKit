// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Post {
    public var like: Like {
        Like(path: path + "/like")
    }

    public struct Like {
        /// Path: `/post/like`
        public let path: String

        public func post(_ body: LemmyKit.CreatePostLike? = nil) -> Request<LemmyKit.PostResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
