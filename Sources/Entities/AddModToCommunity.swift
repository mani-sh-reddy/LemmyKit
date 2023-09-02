// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AddModToCommunity: Codable {
    public var communityID: Double
    public var personID: Double
    /// AddModToCommunity.added
    public var isAdded: Bool
    /// AddModToCommunity.auth
    public var auth: String

    public init(communityID: Double, personID: Double, isAdded: Bool, auth: String) {
        self.communityID = communityID
        self.personID = personID
        self.isAdded = isAdded
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.communityID = try values.decode(Double.self, forKey: "community_id")
        self.personID = try values.decode(Double.self, forKey: "person_id")
        self.isAdded = try values.decode(Bool.self, forKey: "added")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(communityID, forKey: "community_id")
        try values.encode(personID, forKey: "person_id")
        try values.encode(isAdded, forKey: "added")
        try values.encode(auth, forKey: "auth")
    }
}