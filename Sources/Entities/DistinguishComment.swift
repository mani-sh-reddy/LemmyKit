// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DistinguishComment: Codable {
    public var commentID: Double
    /// DistinguishComment.distinguished
    public var isDistinguished: Bool
    /// DistinguishComment.auth
    public var auth: String

    public init(commentID: Double, isDistinguished: Bool, auth: String) {
        self.commentID = commentID
        self.isDistinguished = isDistinguished
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.commentID = try values.decode(Double.self, forKey: "comment_id")
        self.isDistinguished = try values.decode(Bool.self, forKey: "distinguished")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(commentID, forKey: "comment_id")
        try values.encode(isDistinguished, forKey: "distinguished")
        try values.encode(auth, forKey: "auth")
    }
}
