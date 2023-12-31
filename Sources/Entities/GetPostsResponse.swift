// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GetPostsResponse: Codable {
    /// GetPostsResponse.posts
    public var posts: [PostView]

    public init(posts: [PostView]) {
        self.posts = posts
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.posts = try values.decode([PostView].self, forKey: "posts")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(posts, forKey: "posts")
    }
}
