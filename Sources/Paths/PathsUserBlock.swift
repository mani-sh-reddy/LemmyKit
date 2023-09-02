// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.User {
    public var block: Block {
        Block(path: path + "/block")
    }

    public struct Block {
        /// Path: `/user/block`
        public let path: String

        public func post(_ body: LemmyKit.BlockPerson? = nil) -> Request<LemmyKit.BlockPersonResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
