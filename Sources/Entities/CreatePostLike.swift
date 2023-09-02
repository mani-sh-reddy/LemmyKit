// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CreatePostLike: Codable {
    public var postID: Double
    /// CreatePostLike.score
    public var score: Double
    /// CreatePostLike.auth
    public var auth: String

    public init(postID: Double, score: Double, auth: String) {
        self.postID = postID
        self.score = score
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.postID = try values.decode(Double.self, forKey: "post_id")
        self.score = try values.decode(Double.self, forKey: "score")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(postID, forKey: "post_id")
        try values.encode(score, forKey: "score")
        try values.encode(auth, forKey: "auth")
    }
}
