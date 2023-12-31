// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ModRemovePostView: Codable {
    public var modRemovePost: ModRemovePost
    /// Person
    public var moderator: Person?
    public var post: Post
    public var community: Community

    public init(modRemovePost: ModRemovePost, moderator: Person? = nil, post: Post, community: Community) {
        self.modRemovePost = modRemovePost
        self.moderator = moderator
        self.post = post
        self.community = community
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.modRemovePost = try values.decode(ModRemovePost.self, forKey: "mod_remove_post")
        self.moderator = try values.decodeIfPresent(Person.self, forKey: "moderator")
        self.post = try values.decode(Post.self, forKey: "post")
        self.community = try values.decode(Community.self, forKey: "community")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(modRemovePost, forKey: "mod_remove_post")
        try values.encodeIfPresent(moderator, forKey: "moderator")
        try values.encode(post, forKey: "post")
        try values.encode(community, forKey: "community")
    }
}
