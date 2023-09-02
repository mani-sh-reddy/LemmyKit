// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Community {
    public var delete: Delete {
        Delete(path: path + "/delete")
    }

    public struct Delete {
        /// Path: `/community/delete`
        public let path: String

        public func post(_ body: LemmyKit.DeleteCommunity? = nil) -> Request<Void> {
            Request(path: path, method: "POST", body: body)
        }
    }
}