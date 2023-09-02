// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Comment: Codable {
    /// CommentId
    public var id: Double
    /// PersonId
    public var creatorID: Double
    public var postID: Double
    /// Comment.content
    public var content: String
    /// Comment.removed
    public var isRemoved: Bool
    /// Comment.published
    public var published: String
    /// Comment.updated
    public var updated: String?
    /// Comment.deleted
    public var isDeleted: Bool
    /// Comment.ap_id
    public var apid: String
    /// Comment.local
    public var isLocal: Bool
    /// Comment.path
    public var path: String
    /// Comment.distinguished
    public var isDistinguished: Bool
    public var languageID: Double

    public init(id: Double, creatorID: Double, postID: Double, content: String, isRemoved: Bool, published: String, updated: String? = nil, isDeleted: Bool, apid: String, isLocal: Bool, path: String, isDistinguished: Bool, languageID: Double) {
        self.id = id
        self.creatorID = creatorID
        self.postID = postID
        self.content = content
        self.isRemoved = isRemoved
        self.published = published
        self.updated = updated
        self.isDeleted = isDeleted
        self.apid = apid
        self.isLocal = isLocal
        self.path = path
        self.isDistinguished = isDistinguished
        self.languageID = languageID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.creatorID = try values.decode(Double.self, forKey: "creator_id")
        self.postID = try values.decode(Double.self, forKey: "post_id")
        self.content = try values.decode(String.self, forKey: "content")
        self.isRemoved = try values.decode(Bool.self, forKey: "removed")
        self.published = try values.decode(String.self, forKey: "published")
        self.updated = try values.decodeIfPresent(String.self, forKey: "updated")
        self.isDeleted = try values.decode(Bool.self, forKey: "deleted")
        self.apid = try values.decode(String.self, forKey: "ap_id")
        self.isLocal = try values.decode(Bool.self, forKey: "local")
        self.path = try values.decode(String.self, forKey: "path")
        self.isDistinguished = try values.decode(Bool.self, forKey: "distinguished")
        self.languageID = try values.decode(Double.self, forKey: "language_id")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(creatorID, forKey: "creator_id")
        try values.encode(postID, forKey: "post_id")
        try values.encode(content, forKey: "content")
        try values.encode(isRemoved, forKey: "removed")
        try values.encode(published, forKey: "published")
        try values.encodeIfPresent(updated, forKey: "updated")
        try values.encode(isDeleted, forKey: "deleted")
        try values.encode(apid, forKey: "ap_id")
        try values.encode(isLocal, forKey: "local")
        try values.encode(path, forKey: "path")
        try values.encode(isDistinguished, forKey: "distinguished")
        try values.encode(languageID, forKey: "language_id")
    }
}
