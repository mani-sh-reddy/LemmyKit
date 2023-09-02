// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Admin.Purge {
    public var community: Community {
        Community(path: path + "/community")
    }

    public struct Community {
        /// Path: `/admin/purge/community`
        public let path: String

        public func post(_ body: LemmyKit.PurgeCommunity? = nil) -> Request<LemmyKit.PurgeItemResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
