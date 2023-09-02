// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.User {
    public var ban: Ban {
        Ban(path: path + "/ban")
    }

    public struct Ban {
        /// Path: `/user/ban`
        public let path: String

        public func post(_ body: LemmyKit.BanPerson? = nil) -> Request<LemmyKit.BanPersonResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
