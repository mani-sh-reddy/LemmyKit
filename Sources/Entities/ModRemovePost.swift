// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ModRemovePost: Codable {
    /// ModRemovePost.id
    public var id: Double
    /// PersonId
    public var modPersonID: Double
    public var postID: Double
    /// ModRemovePost.reason
    public var reason: String?
    /// ModRemovePost.removed
    public var isRemoved: Bool
    /// ModRemovePost.when_
    public var when: String

    public init(id: Double, modPersonID: Double, postID: Double, reason: String? = nil, isRemoved: Bool, when: String) {
        self.id = id
        self.modPersonID = modPersonID
        self.postID = postID
        self.reason = reason
        self.isRemoved = isRemoved
        self.when = when
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.modPersonID = try values.decode(Double.self, forKey: "mod_person_id")
        self.postID = try values.decode(Double.self, forKey: "post_id")
        self.reason = try values.decodeIfPresent(String.self, forKey: "reason")
        self.isRemoved = try values.decode(Bool.self, forKey: "removed")
        self.when = try values.decode(String.self, forKey: "when_")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(modPersonID, forKey: "mod_person_id")
        try values.encode(postID, forKey: "post_id")
        try values.encodeIfPresent(reason, forKey: "reason")
        try values.encode(isRemoved, forKey: "removed")
        try values.encode(when, forKey: "when_")
    }
}
