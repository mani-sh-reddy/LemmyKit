// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct MyUserInfo: Codable {
    public var localUserView: LocalUserView
    /// MyUserInfo.follows
    public var follows: [CommunityFollowerView]
    /// MyUserInfo.moderates
    public var moderates: [CommunityModeratorView]
    /// MyUserInfo.community_blocks
    public var communityBlocks: [CommunityBlockView]
    /// MyUserInfo.person_blocks
    public var personBlocks: [PersonBlockView]
    /// MyUserInfo.discussion_languages
    public var discussionLanguages: [Double]

    public init(localUserView: LocalUserView, follows: [CommunityFollowerView], moderates: [CommunityModeratorView], communityBlocks: [CommunityBlockView], personBlocks: [PersonBlockView], discussionLanguages: [Double]) {
        self.localUserView = localUserView
        self.follows = follows
        self.moderates = moderates
        self.communityBlocks = communityBlocks
        self.personBlocks = personBlocks
        self.discussionLanguages = discussionLanguages
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.localUserView = try values.decode(LocalUserView.self, forKey: "local_user_view")
        self.follows = try values.decode([CommunityFollowerView].self, forKey: "follows")
        self.moderates = try values.decode([CommunityModeratorView].self, forKey: "moderates")
        self.communityBlocks = try values.decode([CommunityBlockView].self, forKey: "community_blocks")
        self.personBlocks = try values.decode([PersonBlockView].self, forKey: "person_blocks")
        self.discussionLanguages = try values.decode([Double].self, forKey: "discussion_languages")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(localUserView, forKey: "local_user_view")
        try values.encode(follows, forKey: "follows")
        try values.encode(moderates, forKey: "moderates")
        try values.encode(communityBlocks, forKey: "community_blocks")
        try values.encode(personBlocks, forKey: "person_blocks")
        try values.encode(discussionLanguages, forKey: "discussion_languages")
    }
}
