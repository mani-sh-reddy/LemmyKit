// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AdminPurgeCommunity: Codable {
    /// AdminPurgeCommunity.id
    public var id: Double
    /// PersonId
    public var adminPersonID: Double
    /// AdminPurgeCommunity.reason
    public var reason: String?
    /// AdminPurgeCommunity.when_
    public var when: String

    public init(id: Double, adminPersonID: Double, reason: String? = nil, when: String) {
        self.id = id
        self.adminPersonID = adminPersonID
        self.reason = reason
        self.when = when
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.adminPersonID = try values.decode(Double.self, forKey: "admin_person_id")
        self.reason = try values.decodeIfPresent(String.self, forKey: "reason")
        self.when = try values.decode(String.self, forKey: "when_")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(adminPersonID, forKey: "admin_person_id")
        try values.encodeIfPresent(reason, forKey: "reason")
        try values.encode(when, forKey: "when_")
    }
}
