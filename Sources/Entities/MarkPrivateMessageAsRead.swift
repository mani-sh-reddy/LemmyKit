// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct MarkPrivateMessageAsRead: Codable {
    public var privateMessageID: Double
    /// MarkPrivateMessageAsRead.read
    public var isRead: Bool
    /// MarkPrivateMessageAsRead.auth
    public var auth: String

    public init(privateMessageID: Double, isRead: Bool, auth: String) {
        self.privateMessageID = privateMessageID
        self.isRead = isRead
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.privateMessageID = try values.decode(Double.self, forKey: "private_message_id")
        self.isRead = try values.decode(Bool.self, forKey: "read")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(privateMessageID, forKey: "private_message_id")
        try values.encode(isRead, forKey: "read")
        try values.encode(auth, forKey: "auth")
    }
}
