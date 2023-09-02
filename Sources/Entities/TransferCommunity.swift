// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TransferCommunity: Codable {
    public var communityID: Double
    public var personID: Double
    /// TransferCommunity.auth
    public var auth: String

    public init(communityID: Double, personID: Double, auth: String) {
        self.communityID = communityID
        self.personID = personID
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.communityID = try values.decode(Double.self, forKey: "community_id")
        self.personID = try values.decode(Double.self, forKey: "person_id")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(communityID, forKey: "community_id")
        try values.encode(personID, forKey: "person_id")
        try values.encode(auth, forKey: "auth")
    }
}
