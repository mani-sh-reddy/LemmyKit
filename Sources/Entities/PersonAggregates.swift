// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PersonAggregates: Codable {
    /// PersonAggregates.id
    public var id: Double
    public var personID: Double
    /// PersonAggregates.post_count
    public var postCount: Double
    /// PersonAggregates.post_score
    public var postScore: Double
    /// PersonAggregates.comment_count
    public var commentCount: Double
    /// PersonAggregates.comment_score
    public var commentScore: Double

    public init(id: Double, personID: Double, postCount: Double, postScore: Double, commentCount: Double, commentScore: Double) {
        self.id = id
        self.personID = personID
        self.postCount = postCount
        self.postScore = postScore
        self.commentCount = commentCount
        self.commentScore = commentScore
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.personID = try values.decode(Double.self, forKey: "person_id")
        self.postCount = try values.decode(Double.self, forKey: "post_count")
        self.postScore = try values.decode(Double.self, forKey: "post_score")
        self.commentCount = try values.decode(Double.self, forKey: "comment_count")
        self.commentScore = try values.decode(Double.self, forKey: "comment_score")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(personID, forKey: "person_id")
        try values.encode(postCount, forKey: "post_count")
        try values.encode(postScore, forKey: "post_score")
        try values.encode(commentCount, forKey: "comment_count")
        try values.encode(commentScore, forKey: "comment_score")
    }
}
