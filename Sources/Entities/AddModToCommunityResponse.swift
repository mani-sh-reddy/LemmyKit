// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AddModToCommunityResponse: Codable {
    /// AddModToCommunityResponse.moderators
    public var moderators: [CommunityModeratorView]

    public init(moderators: [CommunityModeratorView]) {
        self.moderators = moderators
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.moderators = try values.decode([CommunityModeratorView].self, forKey: "moderators")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(moderators, forKey: "moderators")
    }
}
