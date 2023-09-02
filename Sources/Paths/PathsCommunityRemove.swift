// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Community {
    public var remove: Remove {
        Remove(path: path + "/remove")
    }

    public struct Remove {
        /// Path: `/community/remove`
        public let path: String

        public func post(_ body: LemmyKit.RemoveCommunity? = nil) -> Request<Void> {
            Request(path: path, method: "POST", body: body)
        }
    }
}