// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Comment {
    public var report: Report {
        Report(path: path + "/report")
    }

    public struct Report {
        /// Path: `/comment/report`
        public let path: String

        public func post(_ body: LemmyKit.CreateCommentReport? = nil) -> Request<LemmyKit.CommentReportResponse> {
            Request(path: path, method: "POST", body: body)
        }
    }
}
