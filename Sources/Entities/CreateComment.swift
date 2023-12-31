// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CreateComment: Codable {
    /// CreateComment.content
    public var content: String
    public var postID: Double
    /// CommentId
    public var parentID: Double?
    public var languageID: Double?
    /// CreateComment.form_id
    public var formID: String?
    /// CreateComment.auth
    public var auth: String

    public init(content: String, postID: Double, parentID: Double? = nil, languageID: Double? = nil, formID: String? = nil, auth: String) {
        self.content = content
        self.postID = postID
        self.parentID = parentID
        self.languageID = languageID
        self.formID = formID
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.content = try values.decode(String.self, forKey: "content")
        self.postID = try values.decode(Double.self, forKey: "post_id")
        self.parentID = try values.decodeIfPresent(Double.self, forKey: "parent_id")
        self.languageID = try values.decodeIfPresent(Double.self, forKey: "language_id")
        self.formID = try values.decodeIfPresent(String.self, forKey: "form_id")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(content, forKey: "content")
        try values.encode(postID, forKey: "post_id")
        try values.encodeIfPresent(parentID, forKey: "parent_id")
        try values.encodeIfPresent(languageID, forKey: "language_id")
        try values.encodeIfPresent(formID, forKey: "form_id")
        try values.encode(auth, forKey: "auth")
    }
}
