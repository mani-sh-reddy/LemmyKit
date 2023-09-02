// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.User {
    public var passwordChange: PasswordChange {
        PasswordChange(path: path + "/password_change")
    }

    public struct PasswordChange {
        /// Path: `/user/password_change`
        public let path: String

        public func post(_ body: LemmyKit.PasswordChangeAfterReset? = nil) -> Request<LemmyKit.LoginResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}