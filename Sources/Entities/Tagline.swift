// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Tagline: Codable {
    /// Tagline.id
    public var id: Double
    public var localSiteID: Double
    /// Tagline.content
    public var content: String
    /// Tagline.published
    public var published: String
    /// Tagline.updated
    public var updated: String?

    public init(id: Double, localSiteID: Double, content: String, published: String, updated: String? = nil) {
        self.id = id
        self.localSiteID = localSiteID
        self.content = content
        self.published = published
        self.updated = updated
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.localSiteID = try values.decode(Double.self, forKey: "local_site_id")
        self.content = try values.decode(String.self, forKey: "content")
        self.published = try values.decode(String.self, forKey: "published")
        self.updated = try values.decodeIfPresent(String.self, forKey: "updated")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(localSiteID, forKey: "local_site_id")
        try values.encode(content, forKey: "content")
        try values.encode(published, forKey: "published")
        try values.encodeIfPresent(updated, forKey: "updated")
    }
}