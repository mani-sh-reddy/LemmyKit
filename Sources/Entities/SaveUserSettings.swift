// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SaveUserSettings: Codable {
    /// SaveUserSettings.show_nsfw
    public var isShowNsfw: Bool?
    /// SaveUserSettings.blur_nsfw
    public var isBlurNsfw: Bool?
    /// SaveUserSettings.auto_expand
    public var isAutoExpand: Bool?
    /// SaveUserSettings.show_scores
    public var isShowScores: Bool?
    /// SaveUserSettings.theme
    public var theme: String?
    /// SortType
    public var defaultSortType: SortType?
    /// ListingType
    public var defaultListingType: ListingType?
    /// SaveUserSettings.interface_language
    public var interfaceLanguage: String?
    /// SaveUserSettings.avatar
    public var avatar: String?
    /// SaveUserSettings.banner
    public var banner: String?
    /// SaveUserSettings.display_name
    public var displayName: String?
    /// SaveUserSettings.email
    public var email: String?
    /// SaveUserSettings.bio
    public var bio: String?
    /// SaveUserSettings.matrix_user_id
    public var matrixUserID: String?
    /// SaveUserSettings.show_avatars
    public var isShowAvatars: Bool?
    /// SaveUserSettings.send_notifications_to_email
    public var isSendNotificationsToEmail: Bool?
    /// SaveUserSettings.bot_account
    public var isBotAccount: Bool?
    /// SaveUserSettings.show_bot_accounts
    public var isShowBotAccounts: Bool?
    /// SaveUserSettings.show_read_posts
    public var isShowReadPosts: Bool?
    /// SaveUserSettings.show_new_post_notifs
    public var isShowNewPostNotifs: Bool?
    /// SaveUserSettings.discussion_languages
    public var discussionLanguages: [Double]?
    /// SaveUserSettings.generate_totp_2fa
    public var isGenerateTotp2fa: Bool?
    /// SaveUserSettings.auth
    public var auth: String
    /// SaveUserSettings.open_links_in_new_tab
    public var isOpenLinksInNewTab: Bool?

    public init(isShowNsfw: Bool? = nil, isBlurNsfw: Bool? = nil, isAutoExpand: Bool? = nil, isShowScores: Bool? = nil, theme: String? = nil, defaultSortType: SortType? = nil, defaultListingType: ListingType? = nil, interfaceLanguage: String? = nil, avatar: String? = nil, banner: String? = nil, displayName: String? = nil, email: String? = nil, bio: String? = nil, matrixUserID: String? = nil, isShowAvatars: Bool? = nil, isSendNotificationsToEmail: Bool? = nil, isBotAccount: Bool? = nil, isShowBotAccounts: Bool? = nil, isShowReadPosts: Bool? = nil, isShowNewPostNotifs: Bool? = nil, discussionLanguages: [Double]? = nil, isGenerateTotp2fa: Bool? = nil, auth: String, isOpenLinksInNewTab: Bool? = nil) {
        self.isShowNsfw = isShowNsfw
        self.isBlurNsfw = isBlurNsfw
        self.isAutoExpand = isAutoExpand
        self.isShowScores = isShowScores
        self.theme = theme
        self.defaultSortType = defaultSortType
        self.defaultListingType = defaultListingType
        self.interfaceLanguage = interfaceLanguage
        self.avatar = avatar
        self.banner = banner
        self.displayName = displayName
        self.email = email
        self.bio = bio
        self.matrixUserID = matrixUserID
        self.isShowAvatars = isShowAvatars
        self.isSendNotificationsToEmail = isSendNotificationsToEmail
        self.isBotAccount = isBotAccount
        self.isShowBotAccounts = isShowBotAccounts
        self.isShowReadPosts = isShowReadPosts
        self.isShowNewPostNotifs = isShowNewPostNotifs
        self.discussionLanguages = discussionLanguages
        self.isGenerateTotp2fa = isGenerateTotp2fa
        self.auth = auth
        self.isOpenLinksInNewTab = isOpenLinksInNewTab
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isShowNsfw = try values.decodeIfPresent(Bool.self, forKey: "show_nsfw")
        self.isBlurNsfw = try values.decodeIfPresent(Bool.self, forKey: "blur_nsfw")
        self.isAutoExpand = try values.decodeIfPresent(Bool.self, forKey: "auto_expand")
        self.isShowScores = try values.decodeIfPresent(Bool.self, forKey: "show_scores")
        self.theme = try values.decodeIfPresent(String.self, forKey: "theme")
        self.defaultSortType = try values.decodeIfPresent(SortType.self, forKey: "default_sort_type")
        self.defaultListingType = try values.decodeIfPresent(ListingType.self, forKey: "default_listing_type")
        self.interfaceLanguage = try values.decodeIfPresent(String.self, forKey: "interface_language")
        self.avatar = try values.decodeIfPresent(String.self, forKey: "avatar")
        self.banner = try values.decodeIfPresent(String.self, forKey: "banner")
        self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
        self.email = try values.decodeIfPresent(String.self, forKey: "email")
        self.bio = try values.decodeIfPresent(String.self, forKey: "bio")
        self.matrixUserID = try values.decodeIfPresent(String.self, forKey: "matrix_user_id")
        self.isShowAvatars = try values.decodeIfPresent(Bool.self, forKey: "show_avatars")
        self.isSendNotificationsToEmail = try values.decodeIfPresent(Bool.self, forKey: "send_notifications_to_email")
        self.isBotAccount = try values.decodeIfPresent(Bool.self, forKey: "bot_account")
        self.isShowBotAccounts = try values.decodeIfPresent(Bool.self, forKey: "show_bot_accounts")
        self.isShowReadPosts = try values.decodeIfPresent(Bool.self, forKey: "show_read_posts")
        self.isShowNewPostNotifs = try values.decodeIfPresent(Bool.self, forKey: "show_new_post_notifs")
        self.discussionLanguages = try values.decodeIfPresent([Double].self, forKey: "discussion_languages")
        self.isGenerateTotp2fa = try values.decodeIfPresent(Bool.self, forKey: "generate_totp_2fa")
        self.auth = try values.decode(String.self, forKey: "auth")
        self.isOpenLinksInNewTab = try values.decodeIfPresent(Bool.self, forKey: "open_links_in_new_tab")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(isShowNsfw, forKey: "show_nsfw")
        try values.encodeIfPresent(isBlurNsfw, forKey: "blur_nsfw")
        try values.encodeIfPresent(isAutoExpand, forKey: "auto_expand")
        try values.encodeIfPresent(isShowScores, forKey: "show_scores")
        try values.encodeIfPresent(theme, forKey: "theme")
        try values.encodeIfPresent(defaultSortType, forKey: "default_sort_type")
        try values.encodeIfPresent(defaultListingType, forKey: "default_listing_type")
        try values.encodeIfPresent(interfaceLanguage, forKey: "interface_language")
        try values.encodeIfPresent(avatar, forKey: "avatar")
        try values.encodeIfPresent(banner, forKey: "banner")
        try values.encodeIfPresent(displayName, forKey: "display_name")
        try values.encodeIfPresent(email, forKey: "email")
        try values.encodeIfPresent(bio, forKey: "bio")
        try values.encodeIfPresent(matrixUserID, forKey: "matrix_user_id")
        try values.encodeIfPresent(isShowAvatars, forKey: "show_avatars")
        try values.encodeIfPresent(isSendNotificationsToEmail, forKey: "send_notifications_to_email")
        try values.encodeIfPresent(isBotAccount, forKey: "bot_account")
        try values.encodeIfPresent(isShowBotAccounts, forKey: "show_bot_accounts")
        try values.encodeIfPresent(isShowReadPosts, forKey: "show_read_posts")
        try values.encodeIfPresent(isShowNewPostNotifs, forKey: "show_new_post_notifs")
        try values.encodeIfPresent(discussionLanguages, forKey: "discussion_languages")
        try values.encodeIfPresent(isGenerateTotp2fa, forKey: "generate_totp_2fa")
        try values.encode(auth, forKey: "auth")
        try values.encodeIfPresent(isOpenLinksInNewTab, forKey: "open_links_in_new_tab")
    }
}
