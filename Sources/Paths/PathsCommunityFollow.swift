// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Community {
    public var follow: Follow {
        Follow(path: path + "/follow")
    }

    public struct Follow {
        /// Path: `/community/follow`
        public let path: String

        public func post(_ body: LemmyKit.FollowCommunity? = nil) -> Request<Void> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
