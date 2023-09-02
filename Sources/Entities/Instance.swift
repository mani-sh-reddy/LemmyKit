// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Instance: Codable {
    /// InstanceId
    public var id: Double
    /// Instance.domain
    public var domain: String
    /// Instance.published
    public var published: String
    /// Instance.updated
    public var updated: String?
    /// Instance.software
    public var software: String?
    /// Instance.version
    public var version: String?

    public init(id: Double, domain: String, published: String, updated: String? = nil, software: String? = nil, version: String? = nil) {
        self.id = id
        self.domain = domain
        self.published = published
        self.updated = updated
        self.software = software
        self.version = version
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.domain = try values.decode(String.self, forKey: "domain")
        self.published = try values.decode(String.self, forKey: "published")
        self.updated = try values.decodeIfPresent(String.self, forKey: "updated")
        self.software = try values.decodeIfPresent(String.self, forKey: "software")
        self.version = try values.decodeIfPresent(String.self, forKey: "version")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(domain, forKey: "domain")
        try values.encode(published, forKey: "published")
        try values.encodeIfPresent(updated, forKey: "updated")
        try values.encodeIfPresent(software, forKey: "software")
        try values.encodeIfPresent(version, forKey: "version")
    }
}
