// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var user: User {
        User(path: "/user")
    }

    public struct User {
        /// Path: `/user`
        public let path: String

        public func get(listPrivateMessageReports: ListPrivateMessageReports? = nil) -> Request<LemmyKit.GetPersonDetailsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(listPrivateMessageReports))
        }

        private func makeGetQuery(_ listPrivateMessageReports: ListPrivateMessageReports?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(listPrivateMessageReports, forKey: "ListPrivateMessageReports")
            return encoder.items
        }

        /// GetPersonDetails
        public struct ListPrivateMessageReports: Codable {
            public var personID: Double?
            /// GetPersonDetails.username
            public var username: String?
            /// SortType
            public var sort: Sort?
            /// GetPersonDetails.page
            public var page: Double?
            /// GetPersonDetails.limit
            public var limit: Double?
            public var communityID: Double?
            /// GetPersonDetails.saved_only
            public var isSavedOnly: Bool?
            /// GetPersonDetails.auth
            public var auth: String?

            /// SortType
            public enum Sort: String, Codable, CaseIterable {
                case active = "Active"
                case hot = "Hot"
                case new = "New"
                case old = "Old"
                case topDay = "TopDay"
                case topWeek = "TopWeek"
                case topMonth = "TopMonth"
                case topYear = "TopYear"
                case topAll = "TopAll"
                case mostComments = "MostComments"
                case newComments = "NewComments"
                case topHour = "TopHour"
                case topSixHour = "TopSixHour"
                case topTwelveHour = "TopTwelveHour"
                case topThreeMonths = "TopThreeMonths"
                case topSixMonths = "TopSixMonths"
                case topNineMonths = "TopNineMonths"
            }

            public init(personID: Double? = nil, username: String? = nil, sort: Sort? = nil, page: Double? = nil, limit: Double? = nil, communityID: Double? = nil, isSavedOnly: Bool? = nil, auth: String? = nil) {
                self.personID = personID
                self.username = username
                self.sort = sort
                self.page = page
                self.limit = limit
                self.communityID = communityID
                self.isSavedOnly = isSavedOnly
                self.auth = auth
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(personID, forKey: "person_id")
                encoder.encode(username, forKey: "username")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(page, forKey: "page")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(communityID, forKey: "community_id")
                encoder.encode(isSavedOnly, forKey: "saved_only")
                encoder.encode(auth, forKey: "auth")
                return encoder.items
            }
        }
    }
}
