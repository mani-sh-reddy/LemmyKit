// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PersonBlockView: Codable {
    public var person: Person
    /// Person
    public var target: Person

    public init(person: Person, target: Person) {
        self.person = person
        self.target = target
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.person = try values.decode(Person.self, forKey: "person")
        self.target = try values.decode(Person.self, forKey: "target")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(person, forKey: "person")
        try values.encode(target, forKey: "target")
    }
}