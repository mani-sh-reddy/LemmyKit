// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CommunityFollowerView: Codable {
    public var community: Community
    /// Person
    public var follower: Person

    public init(community: Community, follower: Person) {
        self.community = community
        self.follower = follower
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.community = try values.decode(Community.self, forKey: "community")
        self.follower = try values.decode(Person.self, forKey: "follower")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(community, forKey: "community")
        try values.encode(follower, forKey: "follower")
    }
}