// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ListRegistrationApplications: Codable {
    /// ListRegistrationApplications.unread_only
    public var isUnreadOnly: Bool?
    /// ListRegistrationApplications.page
    public var page: Double?
    /// ListRegistrationApplications.limit
    public var limit: Double?
    /// ListRegistrationApplications.auth
    public var auth: String

    public init(isUnreadOnly: Bool? = nil, page: Double? = nil, limit: Double? = nil, auth: String) {
        self.isUnreadOnly = isUnreadOnly
        self.page = page
        self.limit = limit
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isUnreadOnly = try values.decodeIfPresent(Bool.self, forKey: "unread_only")
        self.page = try values.decodeIfPresent(Double.self, forKey: "page")
        self.limit = try values.decodeIfPresent(Double.self, forKey: "limit")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(isUnreadOnly, forKey: "unread_only")
        try values.encodeIfPresent(page, forKey: "page")
        try values.encodeIfPresent(limit, forKey: "limit")
        try values.encode(auth, forKey: "auth")
    }
}
