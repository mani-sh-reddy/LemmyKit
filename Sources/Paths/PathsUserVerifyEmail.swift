// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.User {
    public var verifyEmail: VerifyEmail {
        VerifyEmail(path: path + "/verify_email")
    }

    public struct VerifyEmail {
        /// Path: `/user/verify_email`
        public let path: String

        public func post(_ body: LemmyKit.VerifyEmail? = nil) -> Request<Void> {
            Request(path: path, method: "POST", body: body)
        }
    }
}