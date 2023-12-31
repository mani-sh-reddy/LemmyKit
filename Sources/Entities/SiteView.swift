// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SiteView: Codable {
    public var site: Site
    public var localSite: LocalSite
    public var localSiteRateLimit: LocalSiteRateLimit
    /// SiteAggregates
    public var counts: SiteAggregates

    public init(site: Site, localSite: LocalSite, localSiteRateLimit: LocalSiteRateLimit, counts: SiteAggregates) {
        self.site = site
        self.localSite = localSite
        self.localSiteRateLimit = localSiteRateLimit
        self.counts = counts
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.site = try values.decode(Site.self, forKey: "site")
        self.localSite = try values.decode(LocalSite.self, forKey: "local_site")
        self.localSiteRateLimit = try values.decode(LocalSiteRateLimit.self, forKey: "local_site_rate_limit")
        self.counts = try values.decode(SiteAggregates.self, forKey: "counts")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(site, forKey: "site")
        try values.encode(localSite, forKey: "local_site")
        try values.encode(localSiteRateLimit, forKey: "local_site_rate_limit")
        try values.encode(counts, forKey: "counts")
    }
}
