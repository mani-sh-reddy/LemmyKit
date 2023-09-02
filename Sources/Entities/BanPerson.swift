// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BanPerson: Codable {
    public var personID: Double
    /// BanPerson.ban
    public var isBan: Bool
    /// BanPerson.remove_data
    public var isRemoveData: Bool?
    /// BanPerson.reason
    public var reason: String?
    /// BanPerson.expires
    public var expires: Double?
    /// BanPerson.auth
    public var auth: String

    public init(personID: Double, isBan: Bool, isRemoveData: Bool? = nil, reason: String? = nil, expires: Double? = nil, auth: String) {
        self.personID = personID
        self.isBan = isBan
        self.isRemoveData = isRemoveData
        self.reason = reason
        self.expires = expires
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.personID = try values.decode(Double.self, forKey: "person_id")
        self.isBan = try values.decode(Bool.self, forKey: "ban")
        self.isRemoveData = try values.decodeIfPresent(Bool.self, forKey: "remove_data")
        self.reason = try values.decodeIfPresent(String.self, forKey: "reason")
        self.expires = try values.decodeIfPresent(Double.self, forKey: "expires")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(personID, forKey: "person_id")
        try values.encode(isBan, forKey: "ban")
        try values.encodeIfPresent(isRemoveData, forKey: "remove_data")
        try values.encodeIfPresent(reason, forKey: "reason")
        try values.encodeIfPresent(expires, forKey: "expires")
        try values.encode(auth, forKey: "auth")
    }
}