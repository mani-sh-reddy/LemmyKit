// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GetFederatedInstancesResponse: Codable {
    public var federatedInstances: FederatedInstances?

    public init(federatedInstances: FederatedInstances? = nil) {
        self.federatedInstances = federatedInstances
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.federatedInstances = try values.decodeIfPresent(FederatedInstances.self, forKey: "federated_instances")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(federatedInstances, forKey: "federated_instances")
    }
}