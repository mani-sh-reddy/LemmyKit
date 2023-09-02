// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ResolveObjectResponse: Codable {
    /// CommentView
    public var comment: CommentView?
    /// PostView
    public var post: PostView?
    /// CommunityView
    public var community: CommunityView?
    /// PersonView
    public var person: PersonView?

    public init(comment: CommentView? = nil, post: PostView? = nil, community: CommunityView? = nil, person: PersonView? = nil) {
        self.comment = comment
        self.post = post
        self.community = community
        self.person = person
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.comment = try values.decodeIfPresent(CommentView.self, forKey: "comment")
        self.post = try values.decodeIfPresent(PostView.self, forKey: "post")
        self.community = try values.decodeIfPresent(CommunityView.self, forKey: "community")
        self.person = try values.decodeIfPresent(PersonView.self, forKey: "person")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(comment, forKey: "comment")
        try values.encodeIfPresent(post, forKey: "post")
        try values.encodeIfPresent(community, forKey: "community")
        try values.encodeIfPresent(person, forKey: "person")
    }
}
