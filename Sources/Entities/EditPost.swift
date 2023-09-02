// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct EditPost: Codable {
    public var postID: Double
    /// EditPost.name
    public var name: String?
    /// EditPost.url
    public var url: String?
    /// EditPost.body
    public var body: String?
    /// EditPost.nsfw
    public var isNsfw: Bool?
    public var languageID: Double?
    /// EditPost.auth
    public var auth: String

    public init(postID: Double, name: String? = nil, url: String? = nil, body: String? = nil, isNsfw: Bool? = nil, languageID: Double? = nil, auth: String) {
        self.postID = postID
        self.name = name
        self.url = url
        self.body = body
        self.isNsfw = isNsfw
        self.languageID = languageID
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.postID = try values.decode(Double.self, forKey: "post_id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.url = try values.decodeIfPresent(String.self, forKey: "url")
        self.body = try values.decodeIfPresent(String.self, forKey: "body")
        self.isNsfw = try values.decodeIfPresent(Bool.self, forKey: "nsfw")
        self.languageID = try values.decodeIfPresent(Double.self, forKey: "language_id")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(postID, forKey: "post_id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(url, forKey: "url")
        try values.encodeIfPresent(body, forKey: "body")
        try values.encodeIfPresent(isNsfw, forKey: "nsfw")
        try values.encodeIfPresent(languageID, forKey: "language_id")
        try values.encode(auth, forKey: "auth")
    }
}