// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CustomEmojiKeyword: Codable {
    /// CustomEmojiKeyword.id
    public var id: Double
    public var customEmojiID: Double
    /// CustomEmojiKeyword.keyword
    public var keyword: String

    public init(id: Double, customEmojiID: Double, keyword: String) {
        self.id = id
        self.customEmojiID = customEmojiID
        self.keyword = keyword
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.customEmojiID = try values.decode(Double.self, forKey: "custom_emoji_id")
        self.keyword = try values.decode(String.self, forKey: "keyword")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(customEmojiID, forKey: "custom_emoji_id")
        try values.encode(keyword, forKey: "keyword")
    }
}
