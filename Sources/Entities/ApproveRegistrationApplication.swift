// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ApproveRegistrationApplication: Codable {
    /// ApproveRegistrationApplication.id
    public var id: Double
    /// ApproveRegistrationApplication.approve
    public var isApprove: Bool
    /// ApproveRegistrationApplication.deny_reason
    public var denyReason: String?
    /// ApproveRegistrationApplication.auth
    public var auth: String

    public init(id: Double, isApprove: Bool, denyReason: String? = nil, auth: String) {
        self.id = id
        self.isApprove = isApprove
        self.denyReason = denyReason
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Double.self, forKey: "id")
        self.isApprove = try values.decode(Bool.self, forKey: "approve")
        self.denyReason = try values.decodeIfPresent(String.self, forKey: "deny_reason")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(isApprove, forKey: "approve")
        try values.encodeIfPresent(denyReason, forKey: "deny_reason")
        try values.encode(auth, forKey: "auth")
    }
}
