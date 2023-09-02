// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AdminPurgeCommentView: Codable {
    public var adminPurgeComment: AdminPurgeComment
    /// Person
    public var admin: Person?
    public var post: Post

    public init(adminPurgeComment: AdminPurgeComment, admin: Person? = nil, post: Post) {
        self.adminPurgeComment = adminPurgeComment
        self.admin = admin
        self.post = post
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.adminPurgeComment = try values.decode(AdminPurgeComment.self, forKey: "admin_purge_comment")
        self.admin = try values.decodeIfPresent(Person.self, forKey: "admin")
        self.post = try values.decode(Post.self, forKey: "post")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(adminPurgeComment, forKey: "admin_purge_comment")
        try values.encodeIfPresent(admin, forKey: "admin")
        try values.encode(post, forKey: "post")
    }
}