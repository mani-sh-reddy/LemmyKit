// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CreateSite: Codable {
    /// CreateSite.name
    public var name: String
    /// CreateSite.sidebar
    public var sidebar: String?
    /// CreateSite.description
    public var description: String?
    /// CreateSite.icon
    public var icon: String?
    /// CreateSite.banner
    public var banner: String?
    /// CreateSite.enable_downvotes
    public var enableDownvotes: Bool?
    /// CreateSite.enable_nsfw
    public var enableNsfw: Bool?
    /// CreateSite.community_creation_admin_only
    public var isCommunityCreationAdminOnly: Bool?
    /// CreateSite.require_email_verification
    public var requireEmailVerification: Bool?
    /// CreateSite.application_question
    public var applicationQuestion: String?
    /// CreateSite.private_instance
    public var isPrivateInstance: Bool?
    /// CreateSite.default_theme
    public var defaultTheme: String?
    /// ListingType
    public var defaultPostListingType: ListingType?
    /// CreateSite.legal_information
    public var legalInformation: String?
    /// CreateSite.application_email_admins
    public var isApplicationEmailAdmins: Bool?
    /// CreateSite.hide_modlog_mod_names
    public var isHideModlogModNames: Bool?
    /// CreateSite.discussion_languages
    public var discussionLanguages: [Double]?
    /// CreateSite.slur_filter_regex
    public var slurFilterRegex: String?
    /// CreateSite.actor_name_max_length
    public var actorNameMaxLength: Double?
    /// CreateSite.rate_limit_message
    public var rateLimitMessage: Double?
    /// CreateSite.rate_limit_message_per_second
    public var rateLimitMessagePerSecond: Double?
    /// CreateSite.rate_limit_post
    public var rateLimitPost: Double?
    /// CreateSite.rate_limit_post_per_second
    public var rateLimitPostPerSecond: Double?
    /// CreateSite.rate_limit_register
    public var rateLimitRegister: Double?
    /// CreateSite.rate_limit_register_per_second
    public var rateLimitRegisterPerSecond: Double?
    /// CreateSite.rate_limit_image
    public var rateLimitImage: Double?
    /// CreateSite.rate_limit_image_per_second
    public var rateLimitImagePerSecond: Double?
    /// CreateSite.rate_limit_comment
    public var rateLimitComment: Double?
    /// CreateSite.rate_limit_comment_per_second
    public var rateLimitCommentPerSecond: Double?
    /// CreateSite.rate_limit_search
    public var rateLimitSearch: Double?
    /// CreateSite.rate_limit_search_per_second
    public var rateLimitSearchPerSecond: Double?
    /// CreateSite.federation_enabled
    public var isFederationEnabled: Bool?
    /// CreateSite.federation_debug
    public var isFederationDebug: Bool?
    /// CreateSite.captcha_enabled
    public var isCaptchaEnabled: Bool?
    /// CreateSite.captcha_difficulty
    public var captchaDifficulty: String?
    /// CreateSite.allowed_instances
    public var allowedInstances: [String]?
    /// CreateSite.blocked_instances
    public var blockedInstances: [String]?
    /// CreateSite.taglines
    public var taglines: [String]?
    public var registrationMode: RegistrationMode?
    /// CreateSite.auth
    public var auth: String

    public init(name: String, sidebar: String? = nil, description: String? = nil, icon: String? = nil, banner: String? = nil, enableDownvotes: Bool? = nil, enableNsfw: Bool? = nil, isCommunityCreationAdminOnly: Bool? = nil, requireEmailVerification: Bool? = nil, applicationQuestion: String? = nil, isPrivateInstance: Bool? = nil, defaultTheme: String? = nil, defaultPostListingType: ListingType? = nil, legalInformation: String? = nil, isApplicationEmailAdmins: Bool? = nil, isHideModlogModNames: Bool? = nil, discussionLanguages: [Double]? = nil, slurFilterRegex: String? = nil, actorNameMaxLength: Double? = nil, rateLimitMessage: Double? = nil, rateLimitMessagePerSecond: Double? = nil, rateLimitPost: Double? = nil, rateLimitPostPerSecond: Double? = nil, rateLimitRegister: Double? = nil, rateLimitRegisterPerSecond: Double? = nil, rateLimitImage: Double? = nil, rateLimitImagePerSecond: Double? = nil, rateLimitComment: Double? = nil, rateLimitCommentPerSecond: Double? = nil, rateLimitSearch: Double? = nil, rateLimitSearchPerSecond: Double? = nil, isFederationEnabled: Bool? = nil, isFederationDebug: Bool? = nil, isCaptchaEnabled: Bool? = nil, captchaDifficulty: String? = nil, allowedInstances: [String]? = nil, blockedInstances: [String]? = nil, taglines: [String]? = nil, registrationMode: RegistrationMode? = nil, auth: String) {
        self.name = name
        self.sidebar = sidebar
        self.description = description
        self.icon = icon
        self.banner = banner
        self.enableDownvotes = enableDownvotes
        self.enableNsfw = enableNsfw
        self.isCommunityCreationAdminOnly = isCommunityCreationAdminOnly
        self.requireEmailVerification = requireEmailVerification
        self.applicationQuestion = applicationQuestion
        self.isPrivateInstance = isPrivateInstance
        self.defaultTheme = defaultTheme
        self.defaultPostListingType = defaultPostListingType
        self.legalInformation = legalInformation
        self.isApplicationEmailAdmins = isApplicationEmailAdmins
        self.isHideModlogModNames = isHideModlogModNames
        self.discussionLanguages = discussionLanguages
        self.slurFilterRegex = slurFilterRegex
        self.actorNameMaxLength = actorNameMaxLength
        self.rateLimitMessage = rateLimitMessage
        self.rateLimitMessagePerSecond = rateLimitMessagePerSecond
        self.rateLimitPost = rateLimitPost
        self.rateLimitPostPerSecond = rateLimitPostPerSecond
        self.rateLimitRegister = rateLimitRegister
        self.rateLimitRegisterPerSecond = rateLimitRegisterPerSecond
        self.rateLimitImage = rateLimitImage
        self.rateLimitImagePerSecond = rateLimitImagePerSecond
        self.rateLimitComment = rateLimitComment
        self.rateLimitCommentPerSecond = rateLimitCommentPerSecond
        self.rateLimitSearch = rateLimitSearch
        self.rateLimitSearchPerSecond = rateLimitSearchPerSecond
        self.isFederationEnabled = isFederationEnabled
        self.isFederationDebug = isFederationDebug
        self.isCaptchaEnabled = isCaptchaEnabled
        self.captchaDifficulty = captchaDifficulty
        self.allowedInstances = allowedInstances
        self.blockedInstances = blockedInstances
        self.taglines = taglines
        self.registrationMode = registrationMode
        self.auth = auth
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
        self.sidebar = try values.decodeIfPresent(String.self, forKey: "sidebar")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.icon = try values.decodeIfPresent(String.self, forKey: "icon")
        self.banner = try values.decodeIfPresent(String.self, forKey: "banner")
        self.enableDownvotes = try values.decodeIfPresent(Bool.self, forKey: "enable_downvotes")
        self.enableNsfw = try values.decodeIfPresent(Bool.self, forKey: "enable_nsfw")
        self.isCommunityCreationAdminOnly = try values.decodeIfPresent(Bool.self, forKey: "community_creation_admin_only")
        self.requireEmailVerification = try values.decodeIfPresent(Bool.self, forKey: "require_email_verification")
        self.applicationQuestion = try values.decodeIfPresent(String.self, forKey: "application_question")
        self.isPrivateInstance = try values.decodeIfPresent(Bool.self, forKey: "private_instance")
        self.defaultTheme = try values.decodeIfPresent(String.self, forKey: "default_theme")
        self.defaultPostListingType = try values.decodeIfPresent(ListingType.self, forKey: "default_post_listing_type")
        self.legalInformation = try values.decodeIfPresent(String.self, forKey: "legal_information")
        self.isApplicationEmailAdmins = try values.decodeIfPresent(Bool.self, forKey: "application_email_admins")
        self.isHideModlogModNames = try values.decodeIfPresent(Bool.self, forKey: "hide_modlog_mod_names")
        self.discussionLanguages = try values.decodeIfPresent([Double].self, forKey: "discussion_languages")
        self.slurFilterRegex = try values.decodeIfPresent(String.self, forKey: "slur_filter_regex")
        self.actorNameMaxLength = try values.decodeIfPresent(Double.self, forKey: "actor_name_max_length")
        self.rateLimitMessage = try values.decodeIfPresent(Double.self, forKey: "rate_limit_message")
        self.rateLimitMessagePerSecond = try values.decodeIfPresent(Double.self, forKey: "rate_limit_message_per_second")
        self.rateLimitPost = try values.decodeIfPresent(Double.self, forKey: "rate_limit_post")
        self.rateLimitPostPerSecond = try values.decodeIfPresent(Double.self, forKey: "rate_limit_post_per_second")
        self.rateLimitRegister = try values.decodeIfPresent(Double.self, forKey: "rate_limit_register")
        self.rateLimitRegisterPerSecond = try values.decodeIfPresent(Double.self, forKey: "rate_limit_register_per_second")
        self.rateLimitImage = try values.decodeIfPresent(Double.self, forKey: "rate_limit_image")
        self.rateLimitImagePerSecond = try values.decodeIfPresent(Double.self, forKey: "rate_limit_image_per_second")
        self.rateLimitComment = try values.decodeIfPresent(Double.self, forKey: "rate_limit_comment")
        self.rateLimitCommentPerSecond = try values.decodeIfPresent(Double.self, forKey: "rate_limit_comment_per_second")
        self.rateLimitSearch = try values.decodeIfPresent(Double.self, forKey: "rate_limit_search")
        self.rateLimitSearchPerSecond = try values.decodeIfPresent(Double.self, forKey: "rate_limit_search_per_second")
        self.isFederationEnabled = try values.decodeIfPresent(Bool.self, forKey: "federation_enabled")
        self.isFederationDebug = try values.decodeIfPresent(Bool.self, forKey: "federation_debug")
        self.isCaptchaEnabled = try values.decodeIfPresent(Bool.self, forKey: "captcha_enabled")
        self.captchaDifficulty = try values.decodeIfPresent(String.self, forKey: "captcha_difficulty")
        self.allowedInstances = try values.decodeIfPresent([String].self, forKey: "allowed_instances")
        self.blockedInstances = try values.decodeIfPresent([String].self, forKey: "blocked_instances")
        self.taglines = try values.decodeIfPresent([String].self, forKey: "taglines")
        self.registrationMode = try values.decodeIfPresent(RegistrationMode.self, forKey: "registration_mode")
        self.auth = try values.decode(String.self, forKey: "auth")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(sidebar, forKey: "sidebar")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(icon, forKey: "icon")
        try values.encodeIfPresent(banner, forKey: "banner")
        try values.encodeIfPresent(enableDownvotes, forKey: "enable_downvotes")
        try values.encodeIfPresent(enableNsfw, forKey: "enable_nsfw")
        try values.encodeIfPresent(isCommunityCreationAdminOnly, forKey: "community_creation_admin_only")
        try values.encodeIfPresent(requireEmailVerification, forKey: "require_email_verification")
        try values.encodeIfPresent(applicationQuestion, forKey: "application_question")
        try values.encodeIfPresent(isPrivateInstance, forKey: "private_instance")
        try values.encodeIfPresent(defaultTheme, forKey: "default_theme")
        try values.encodeIfPresent(defaultPostListingType, forKey: "default_post_listing_type")
        try values.encodeIfPresent(legalInformation, forKey: "legal_information")
        try values.encodeIfPresent(isApplicationEmailAdmins, forKey: "application_email_admins")
        try values.encodeIfPresent(isHideModlogModNames, forKey: "hide_modlog_mod_names")
        try values.encodeIfPresent(discussionLanguages, forKey: "discussion_languages")
        try values.encodeIfPresent(slurFilterRegex, forKey: "slur_filter_regex")
        try values.encodeIfPresent(actorNameMaxLength, forKey: "actor_name_max_length")
        try values.encodeIfPresent(rateLimitMessage, forKey: "rate_limit_message")
        try values.encodeIfPresent(rateLimitMessagePerSecond, forKey: "rate_limit_message_per_second")
        try values.encodeIfPresent(rateLimitPost, forKey: "rate_limit_post")
        try values.encodeIfPresent(rateLimitPostPerSecond, forKey: "rate_limit_post_per_second")
        try values.encodeIfPresent(rateLimitRegister, forKey: "rate_limit_register")
        try values.encodeIfPresent(rateLimitRegisterPerSecond, forKey: "rate_limit_register_per_second")
        try values.encodeIfPresent(rateLimitImage, forKey: "rate_limit_image")
        try values.encodeIfPresent(rateLimitImagePerSecond, forKey: "rate_limit_image_per_second")
        try values.encodeIfPresent(rateLimitComment, forKey: "rate_limit_comment")
        try values.encodeIfPresent(rateLimitCommentPerSecond, forKey: "rate_limit_comment_per_second")
        try values.encodeIfPresent(rateLimitSearch, forKey: "rate_limit_search")
        try values.encodeIfPresent(rateLimitSearchPerSecond, forKey: "rate_limit_search_per_second")
        try values.encodeIfPresent(isFederationEnabled, forKey: "federation_enabled")
        try values.encodeIfPresent(isFederationDebug, forKey: "federation_debug")
        try values.encodeIfPresent(isCaptchaEnabled, forKey: "captcha_enabled")
        try values.encodeIfPresent(captchaDifficulty, forKey: "captcha_difficulty")
        try values.encodeIfPresent(allowedInstances, forKey: "allowed_instances")
        try values.encodeIfPresent(blockedInstances, forKey: "blocked_instances")
        try values.encodeIfPresent(taglines, forKey: "taglines")
        try values.encodeIfPresent(registrationMode, forKey: "registration_mode")
        try values.encode(auth, forKey: "auth")
    }
}