// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct FollowCommunity: Codable {
    public var communityID: Double
    /// FollowCommunity.follow
    public var isFollow: Bool
    /// FollowCommunity.auth
    public var auth: String

    public init(communityID: Double, isFollow: Bool, auth: String) {
        self.communityID = communityID
        self.isFollow = isFollow
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.communityID = try values.decode(Double.self, forKey: "community_id")
        self.isFollow = try values.decode(Bool.self, forKey: "follow")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(communityID, forKey: "community_id")
        try values.encode(isFollow, forKey: "follow")
        try values.encode(auth, forKey: "auth")
    }
}