// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ListCommunitiesResponse: Codable {
    /// ListCommunitiesResponse.communities
    public var communities: [CommunityView]

    public init(communities: [CommunityView]) {
        self.communities = communities
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.communities = try values.decode([CommunityView].self, forKey: "communities")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(communities, forKey: "communities")
    }
}
