// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CreatePost: Codable {
    /// CreatePost.name
    public var name: String
    public var communityID: Double
    /// CreatePost.url
    public var url: String?
    /// CreatePost.body
    public var body: String?
    /// CreatePost.honeypot
    public var honeypot: String?
    /// CreatePost.nsfw
    public var isNsfw: Bool?
    public var languageID: Double?
    /// CreatePost.auth
    public var auth: String

    public init(name: String, communityID: Double, url: String? = nil, body: String? = nil, honeypot: String? = nil, isNsfw: Bool? = nil, languageID: Double? = nil, auth: String) {
        self.name = name
        self.communityID = communityID
        self.url = url
        self.body = body
        self.honeypot = honeypot
        self.isNsfw = isNsfw
        self.languageID = languageID
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
        self.communityID = try values.decode(Double.self, forKey: "community_id")
        self.url = try values.decodeIfPresent(String.self, forKey: "url")
        self.body = try values.decodeIfPresent(String.self, forKey: "body")
        self.honeypot = try values.decodeIfPresent(String.self, forKey: "honeypot")
        self.isNsfw = try values.decodeIfPresent(Bool.self, forKey: "nsfw")
        self.languageID = try values.decodeIfPresent(Double.self, forKey: "language_id")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
        try values.encode(communityID, forKey: "community_id")
        try values.encodeIfPresent(url, forKey: "url")
        try values.encodeIfPresent(body, forKey: "body")
        try values.encodeIfPresent(honeypot, forKey: "honeypot")
        try values.encodeIfPresent(isNsfw, forKey: "nsfw")
        try values.encodeIfPresent(languageID, forKey: "language_id")
        try values.encode(auth, forKey: "auth")
    }
}