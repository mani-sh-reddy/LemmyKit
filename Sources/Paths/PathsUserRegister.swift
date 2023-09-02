// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.User {
    public var register: Register {
        Register(path: path + "/register")
    }

    public struct Register {
        /// Path: `/user/register`
        public let path: String

        public func post(_ body: LemmyKit.Register? = nil) -> Request<LemmyKit.LoginResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
