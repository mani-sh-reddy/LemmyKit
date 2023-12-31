// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public enum ModlogActionType: String, Codable, CaseIterable {
    case all = "All"
    case modRemovePost = "ModRemovePost"
    case modLockPost = "ModLockPost"
    case modFeaturePost = "ModFeaturePost"
    case modRemoveComment = "ModRemoveComment"
    case modRemoveCommunity = "ModRemoveCommunity"
    case modBanFromCommunity = "ModBanFromCommunity"
    case modAddCommunity = "ModAddCommunity"
    case modTransferCommunity = "ModTransferCommunity"
    case modAdd = "ModAdd"
    case modBan = "ModBan"
    case modHideCommunity = "ModHideCommunity"
    case adminPurgePerson = "AdminPurgePerson"
    case adminPurgeCommunity = "AdminPurgeCommunity"
    case adminPurgePost = "AdminPurgePost"
    case adminPurgeComment = "AdminPurgeComment"
}
