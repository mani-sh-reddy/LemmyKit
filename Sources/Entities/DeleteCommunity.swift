// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DeleteCommunity: Codable {
    public var communityID: Double
    /// DeleteCommunity.deleted
    public var isDeleted: Bool
    /// DeleteCommunity.auth
    public var auth: String

    public init(communityID: Double, isDeleted: Bool, auth: String) {
        self.communityID = communityID
        self.isDeleted = isDeleted
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.communityID = try values.decode(Double.self, forKey: "community_id")
        self.isDeleted = try values.decode(Bool.self, forKey: "deleted")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(communityID, forKey: "community_id")
        try values.encode(isDeleted, forKey: "deleted")
        try values.encode(auth, forKey: "auth")
    }
}