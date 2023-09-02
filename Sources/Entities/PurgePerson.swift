// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PurgePerson: Codable {
    public var personID: Double
    /// PurgePerson.reason
    public var reason: String?
    /// PurgePerson.auth
    public var auth: String

    public init(personID: Double, reason: String? = nil, auth: String) {
        self.personID = personID
        self.reason = reason
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.personID = try values.decode(Double.self, forKey: "person_id")
        self.reason = try values.decodeIfPresent(String.self, forKey: "reason")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(personID, forKey: "person_id")
        try values.encodeIfPresent(reason, forKey: "reason")
        try values.encode(auth, forKey: "auth")
    }
}
