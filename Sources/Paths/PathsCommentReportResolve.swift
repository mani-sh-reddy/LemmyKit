// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Comment.Report {
    public var resolve: Resolve {
        Resolve(path: path + "/resolve")
    }

    public struct Resolve {
        /// Path: `/comment/report/resolve`
        public let path: String

        public func put(_ body: LemmyKit.ResolveCommentReport? = nil) -> Request<LemmyKit.CommentReportResponse> {
            Request(path: path, method: "PUT", body: body)
        }
    }
}