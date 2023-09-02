// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ListPrivateMessageReports: Codable {
    /// ListPrivateMessageReports.page
    public var page: Double?
    /// ListPrivateMessageReports.limit
    public var limit: Double?
    /// ListPrivateMessageReports.unresolved_only
    public var isUnresolvedOnly: Bool?
    /// ListPrivateMessageReports.auth
    public var auth: String

    public init(page: Double? = nil, limit: Double? = nil, isUnresolvedOnly: Bool? = nil, auth: String) {
        self.page = page
        self.limit = limit
        self.isUnresolvedOnly = isUnresolvedOnly
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.page = try values.decodeIfPresent(Double.self, forKey: "page")
        self.limit = try values.decodeIfPresent(Double.self, forKey: "limit")
        self.isUnresolvedOnly = try values.decodeIfPresent(Bool.self, forKey: "unresolved_only")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(page, forKey: "page")
        try values.encodeIfPresent(limit, forKey: "limit")
        try values.encodeIfPresent(isUnresolvedOnly, forKey: "unresolved_only")
        try values.encode(auth, forKey: "auth")
    }
}