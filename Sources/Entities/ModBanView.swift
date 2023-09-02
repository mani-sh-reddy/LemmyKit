// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ModBanView: Codable {
    public var modBan: ModBan
    /// Person
    public var moderator: Person?
    /// Person
    public var bannedPerson: Person

    public init(modBan: ModBan, moderator: Person? = nil, bannedPerson: Person) {
        self.modBan = modBan
        self.moderator = moderator
        self.bannedPerson = bannedPerson
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.modBan = try values.decode(ModBan.self, forKey: "mod_ban")
        self.moderator = try values.decodeIfPresent(Person.self, forKey: "moderator")
        self.bannedPerson = try values.decode(Person.self, forKey: "banned_person")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(modBan, forKey: "mod_ban")
        try values.encodeIfPresent(moderator, forKey: "moderator")
        try values.encode(bannedPerson, forKey: "banned_person")
    }
}