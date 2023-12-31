// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PostAggregates: Codable {
    /// PostAggregates.id
    public var id: Double
    public var postID: Double
    /// PostAggregates.comments
    public var comments: Double
    /// PostAggregates.score
    public var score: Double
    /// PostAggregates.upvotes
    public var upvotes: Double
    /// PostAggregates.downvotes
    public var downvotes: Double
    /// PostAggregates.published
    public var published: String
    /// PostAggregates.newest_comment_time_necro
    public var newestCommentTimeNecro: String
    /// PostAggregates.newest_comment_time
    public var newestCommentTime: String
    /// PostAggregates.featured_community
    public var isFeaturedCommunity: Bool
    /// PostAggregates.featured_local
    public var isFeaturedLocal: Bool
    /// PostAggregates.hot_rank
    public var hotRank: Double
    /// PostAggregates.hot_rank_active
    public var hotRankActive: Double

    public init(id: Double, postID: Double, comments: Double, score: Double, upvotes: Double, downvotes: Double, published: String, newestCommentTimeNecro: String, newestCommentTime: String, isFeaturedCommunity: Bool, isFeaturedLocal: Bool, hotRank: Double, hotRankActive: Double) {
        self.id = id
        self.postID = postID
        self.comments = comments
        self.score = score
        self.upvotes = upvotes
        self.downvotes = downvotes
        self.published = published
        self.newestCommentTimeNecro = newestCommentTimeNecro
        self.newestCommentTime = newestCommentTime
        self.isFeaturedCommunity = isFeaturedCommunity
        self.isFeaturedLocal = isFeaturedLocal
        self.hotRank = hotRank
        self.hotRankActive = hotRankActive
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.postID = try values.decode(Double.self, forKey: "post_id")
        self.comments = try values.decode(Double.self, forKey: "comments")
        self.score = try values.decode(Double.self, forKey: "score")
        self.upvotes = try values.decode(Double.self, forKey: "upvotes")
        self.downvotes = try values.decode(Double.self, forKey: "downvotes")
        self.published = try values.decode(String.self, forKey: "published")
        self.newestCommentTimeNecro = try values.decode(String.self, forKey: "newest_comment_time_necro")
        self.newestCommentTime = try values.decode(String.self, forKey: "newest_comment_time")
        self.isFeaturedCommunity = try values.decode(Bool.self, forKey: "featured_community")
        self.isFeaturedLocal = try values.decode(Bool.self, forKey: "featured_local")
        self.hotRank = try values.decode(Double.self, forKey: "hot_rank")
        self.hotRankActive = try values.decode(Double.self, forKey: "hot_rank_active")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(postID, forKey: "post_id")
        try values.encode(comments, forKey: "comments")
        try values.encode(score, forKey: "score")
        try values.encode(upvotes, forKey: "upvotes")
        try values.encode(downvotes, forKey: "downvotes")
        try values.encode(published, forKey: "published")
        try values.encode(newestCommentTimeNecro, forKey: "newest_comment_time_necro")
        try values.encode(newestCommentTime, forKey: "newest_comment_time")
        try values.encode(isFeaturedCommunity, forKey: "featured_community")
        try values.encode(isFeaturedLocal, forKey: "featured_local")
        try values.encode(hotRank, forKey: "hot_rank")
        try values.encode(hotRankActive, forKey: "hot_rank_active")
    }
}
