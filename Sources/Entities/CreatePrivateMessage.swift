// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CreatePrivateMessage: Codable {
    /// CreatePrivateMessage.content
    public var content: String
    /// PersonId
    public var recipientID: Double
    /// CreatePrivateMessage.auth
    public var auth: String

    public init(content: String, recipientID: Double, auth: String) {
        self.content = content
        self.recipientID = recipientID
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.content = try values.decode(String.self, forKey: "content")
        self.recipientID = try values.decode(Double.self, forKey: "recipient_id")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(content, forKey: "content")
        try values.encode(recipientID, forKey: "recipient_id")
        try values.encode(auth, forKey: "auth")
    }
}
