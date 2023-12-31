// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Search: Codable {
    /// Search.q
    public var q: String
    public var communityID: Double?
    /// Search.community_name
    public var communityName: String?
    /// PersonId
    public var creatorID: Double?
    /// SearchType
    public var type: SearchType?
    /// SortType
    public var sort: SortType?
    public var listingType: ListingType?
    /// Search.page
    public var page: Double?
    /// Search.limit
    public var limit: Double?
    /// Search.auth
    public var auth: String?

    public init(q: String, communityID: Double? = nil, communityName: String? = nil, creatorID: Double? = nil, type: SearchType? = nil, sort: SortType? = nil, listingType: ListingType? = nil, page: Double? = nil, limit: Double? = nil, auth: String? = nil) {
        self.q = q
        self.communityID = communityID
        self.communityName = communityName
        self.creatorID = creatorID
        self.type = type
        self.sort = sort
        self.listingType = listingType
        self.page = page
        self.limit = limit
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.q = try values.decode(String.self, forKey: "q")
        self.communityID = try values.decodeIfPresent(Double.self, forKey: "community_id")
        self.communityName = try values.decodeIfPresent(String.self, forKey: "community_name")
        self.creatorID = try values.decodeIfPresent(Double.self, forKey: "creator_id")
        self.type = try values.decodeIfPresent(SearchType.self, forKey: "type_")
        self.sort = try values.decodeIfPresent(SortType.self, forKey: "sort")
        self.listingType = try values.decodeIfPresent(ListingType.self, forKey: "listing_type")
        self.page = try values.decodeIfPresent(Double.self, forKey: "page")
        self.limit = try values.decodeIfPresent(Double.self, forKey: "limit")
        self.auth = try values.decodeIfPresent(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(q, forKey: "q")
        try values.encodeIfPresent(communityID, forKey: "community_id")
        try values.encodeIfPresent(communityName, forKey: "community_name")
        try values.encodeIfPresent(creatorID, forKey: "creator_id")
        try values.encodeIfPresent(type, forKey: "type_")
        try values.encodeIfPresent(sort, forKey: "sort")
        try values.encodeIfPresent(listingType, forKey: "listing_type")
        try values.encodeIfPresent(page, forKey: "page")
        try values.encodeIfPresent(limit, forKey: "limit")
        try values.encodeIfPresent(auth, forKey: "auth")
    }
}
