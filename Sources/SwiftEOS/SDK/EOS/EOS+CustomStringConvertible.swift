import Foundation
import EOSSDK

extension EOS_EAntiCheatClientMode: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCM_Invalid: return "EOS_ACCM_Invalid"
            case .EOS_ACCM_ClientServer: return "EOS_ACCM_ClientServer"
            case .EOS_ACCM_PeerToPeer: return "EOS_ACCM_PeerToPeer"
            case .__EOS_EAntiCheatClientMode_PAD_INT32__: return "__EOS_EAntiCheatClientMode_PAD_INT32__"
            default: return "EOS_EAntiCheatClientMode(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatClientViolationType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCVT_Invalid: return "EOS_ACCVT_Invalid"
            case .EOS_ACCVT_IntegrityCatalogNotFound: return "EOS_ACCVT_IntegrityCatalogNotFound"
            case .EOS_ACCVT_IntegrityCatalogError: return "EOS_ACCVT_IntegrityCatalogError"
            case .EOS_ACCVT_IntegrityCatalogCertificateRevoked: return "EOS_ACCVT_IntegrityCatalogCertificateRevoked"
            case .EOS_ACCVT_IntegrityCatalogMissingMainExecutable: return "EOS_ACCVT_IntegrityCatalogMissingMainExecutable"
            case .EOS_ACCVT_GameFileMismatch: return "EOS_ACCVT_GameFileMismatch"
            case .EOS_ACCVT_RequiredGameFileNotFound: return "EOS_ACCVT_RequiredGameFileNotFound"
            case .EOS_ACCVT_UnknownGameFileForbidden: return "EOS_ACCVT_UnknownGameFileForbidden"
            case .EOS_ACCVT_SystemFileUntrusted: return "EOS_ACCVT_SystemFileUntrusted"
            case .EOS_ACCVT_ForbiddenModuleLoaded: return "EOS_ACCVT_ForbiddenModuleLoaded"
            case .EOS_ACCVT_CorruptedMemory: return "EOS_ACCVT_CorruptedMemory"
            case .EOS_ACCVT_ForbiddenToolDetected: return "EOS_ACCVT_ForbiddenToolDetected"
            case .EOS_ACCVT_InternalAntiCheatViolation: return "EOS_ACCVT_InternalAntiCheatViolation"
            case .EOS_ACCVT_CorruptedNetworkMessageFlow: return "EOS_ACCVT_CorruptedNetworkMessageFlow"
            case .EOS_ACCVT_VirtualMachineNotAllowed: return "EOS_ACCVT_VirtualMachineNotAllowed"
            case .EOS_ACCVT_ForbiddenSystemConfiguration: return "EOS_ACCVT_ForbiddenSystemConfiguration"
            case .__EOS_EAntiCheatClientViolationType_PAD_INT32__: return "__EOS_EAntiCheatClientViolationType_PAD_INT32__"
            default: return "EOS_EAntiCheatClientViolationType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonClientAction: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCCA_Invalid: return "EOS_ACCCA_Invalid"
            case .EOS_ACCCA_RemovePlayer: return "EOS_ACCCA_RemovePlayer"
            case .__EOS_EAntiCheatCommonClientAction_PAD_INT32__: return "__EOS_EAntiCheatCommonClientAction_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonClientAction(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonClientActionReason: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCCAR_Invalid: return "EOS_ACCCAR_Invalid"
            case .EOS_ACCCAR_InternalError: return "EOS_ACCCAR_InternalError"
            case .EOS_ACCCAR_InvalidMessage: return "EOS_ACCCAR_InvalidMessage"
            case .EOS_ACCCAR_AuthenticationFailed: return "EOS_ACCCAR_AuthenticationFailed"
            case .EOS_ACCCAR_NullClient: return "EOS_ACCCAR_NullClient"
            case .EOS_ACCCAR_HeartbeatTimeout: return "EOS_ACCCAR_HeartbeatTimeout"
            case .EOS_ACCCAR_ClientViolation: return "EOS_ACCCAR_ClientViolation"
            case .EOS_ACCCAR_BackendViolation: return "EOS_ACCCAR_BackendViolation"
            case .EOS_ACCCAR_TemporaryCooldown: return "EOS_ACCCAR_TemporaryCooldown"
            case .EOS_ACCCAR_TemporaryBanned: return "EOS_ACCCAR_TemporaryBanned"
            case .EOS_ACCCAR_PermanentBanned: return "EOS_ACCCAR_PermanentBanned"
            case .__EOS_EAntiCheatCommonClientActionReason_PAD_INT32__: return "__EOS_EAntiCheatCommonClientActionReason_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonClientActionReason(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonClientAuthStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCCAS_Invalid: return "EOS_ACCCAS_Invalid"
            case .EOS_ACCCAS_LocalAuthComplete: return "EOS_ACCCAS_LocalAuthComplete"
            case .EOS_ACCCAS_RemoteAuthComplete: return "EOS_ACCCAS_RemoteAuthComplete"
            case .__EOS_EAntiCheatCommonClientAuthStatus_PAD_INT32__: return "__EOS_EAntiCheatCommonClientAuthStatus_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonClientAuthStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonClientFlags: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCCF_None: return "EOS_ACCCF_None"
            case .EOS_ACCCF_Admin: return "EOS_ACCCF_Admin"
            case .__EOS_EAntiCheatCommonClientFlags_PAD_INT32__: return "__EOS_EAntiCheatCommonClientFlags_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonClientFlags(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonClientInput: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCCI_Unknown: return "EOS_ACCCI_Unknown"
            case .EOS_ACCCI_MouseKeyboard: return "EOS_ACCCI_MouseKeyboard"
            case .EOS_ACCCI_Gamepad: return "EOS_ACCCI_Gamepad"
            case .EOS_ACCCI_TouchInput: return "EOS_ACCCI_TouchInput"
            case .__EOS_EAntiCheatCommonClientInput_PAD_INT32__: return "__EOS_EAntiCheatCommonClientInput_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonClientInput(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonClientPlatform: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCCP_Unknown: return "EOS_ACCCP_Unknown"
            case .EOS_ACCCP_Windows: return "EOS_ACCCP_Windows"
            case .EOS_ACCCP_Mac: return "EOS_ACCCP_Mac"
            case .EOS_ACCCP_Linux: return "EOS_ACCCP_Linux"
            case .EOS_ACCCP_Xbox: return "EOS_ACCCP_Xbox"
            case .EOS_ACCCP_PlayStation: return "EOS_ACCCP_PlayStation"
            case .EOS_ACCCP_Nintendo: return "EOS_ACCCP_Nintendo"
            case .EOS_ACCCP_iOS: return "EOS_ACCCP_iOS"
            case .EOS_ACCCP_Android: return "EOS_ACCCP_Android"
            case .__EOS_EAntiCheatCommonClientPlatform_PAD_INT32__: return "__EOS_EAntiCheatCommonClientPlatform_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonClientPlatform(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonClientType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCCT_ProtectedClient: return "EOS_ACCCT_ProtectedClient"
            case .EOS_ACCCT_UnprotectedClient: return "EOS_ACCCT_UnprotectedClient"
            case .EOS_ACCCT_AIBot: return "EOS_ACCCT_AIBot"
            case .__EOS_EAntiCheatCommonClientType_PAD_INT32__: return "__EOS_EAntiCheatCommonClientType_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonClientType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonEventParamType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCEPT_Invalid: return "EOS_ACCEPT_Invalid"
            case .EOS_ACCEPT_ClientHandle: return "EOS_ACCEPT_ClientHandle"
            case .EOS_ACCEPT_String: return "EOS_ACCEPT_String"
            case .EOS_ACCEPT_UInt32: return "EOS_ACCEPT_UInt32"
            case .EOS_ACCEPT_Int32: return "EOS_ACCEPT_Int32"
            case .EOS_ACCEPT_UInt64: return "EOS_ACCEPT_UInt64"
            case .EOS_ACCEPT_Int64: return "EOS_ACCEPT_Int64"
            case .EOS_ACCEPT_Vector3f: return "EOS_ACCEPT_Vector3f"
            case .EOS_ACCEPT_Quat: return "EOS_ACCEPT_Quat"
            case .__EOS_EAntiCheatCommonEventParamType_PAD_INT32__: return "__EOS_EAntiCheatCommonEventParamType_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonEventParamType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonEventType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCET_Invalid: return "EOS_ACCET_Invalid"
            case .EOS_ACCET_GameEvent: return "EOS_ACCET_GameEvent"
            case .EOS_ACCET_PlayerEvent: return "EOS_ACCET_PlayerEvent"
            case .__EOS_EAntiCheatCommonEventType_PAD_INT32__: return "__EOS_EAntiCheatCommonEventType_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonEventType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonPlayerMovementState: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCPMS_None: return "EOS_ACCPMS_None"
            case .EOS_ACCPMS_Crouching: return "EOS_ACCPMS_Crouching"
            case .EOS_ACCPMS_Prone: return "EOS_ACCPMS_Prone"
            case .EOS_ACCPMS_Mounted: return "EOS_ACCPMS_Mounted"
            case .EOS_ACCPMS_Swimming: return "EOS_ACCPMS_Swimming"
            case .EOS_ACCPMS_Falling: return "EOS_ACCPMS_Falling"
            case .EOS_ACCPMS_Flying: return "EOS_ACCPMS_Flying"
            case .EOS_ACCPMS_OnLadder: return "EOS_ACCPMS_OnLadder"
            case .__EOS_EAntiCheatCommonPlayerMovementState_PAD_INT32__: return "__EOS_EAntiCheatCommonPlayerMovementState_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonPlayerMovementState(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonPlayerTakeDamageResult: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCPTDR_None: return "EOS_ACCPTDR_None"
            case .EOS_ACCPTDR_Downed: return "EOS_ACCPTDR_Downed"
            case .EOS_ACCPTDR_Eliminated: return "EOS_ACCPTDR_Eliminated"
            case .__EOS_EAntiCheatCommonPlayerTakeDamageResult_PAD_INT32__: return "__EOS_EAntiCheatCommonPlayerTakeDamageResult_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonPlayerTakeDamageResult(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonPlayerTakeDamageSource: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCPTDS_None: return "EOS_ACCPTDS_None"
            case .EOS_ACCPTDS_Player: return "EOS_ACCPTDS_Player"
            case .EOS_ACCPTDS_NonPlayerCharacter: return "EOS_ACCPTDS_NonPlayerCharacter"
            case .EOS_ACCPTDS_World: return "EOS_ACCPTDS_World"
            case .__EOS_EAntiCheatCommonPlayerTakeDamageSource_PAD_INT32__: return "__EOS_EAntiCheatCommonPlayerTakeDamageSource_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonPlayerTakeDamageSource(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAntiCheatCommonPlayerTakeDamageType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ACCPTDT_None: return "EOS_ACCPTDT_None"
            case .EOS_ACCPTDT_PointDamage: return "EOS_ACCPTDT_PointDamage"
            case .EOS_ACCPTDT_RadialDamage: return "EOS_ACCPTDT_RadialDamage"
            case .EOS_ACCPTDT_DamageOverTime: return "EOS_ACCPTDT_DamageOverTime"
            case .__EOS_EAntiCheatCommonPlayerTakeDamageType_PAD_INT32__: return "__EOS_EAntiCheatCommonPlayerTakeDamageType_PAD_INT32__"
            default: return "EOS_EAntiCheatCommonPlayerTakeDamageType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAttributeType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_AT_BOOLEAN: return "EOS_AT_BOOLEAN"
            case .EOS_AT_INT64: return "EOS_AT_INT64"
            case .EOS_AT_DOUBLE: return "EOS_AT_DOUBLE"
            case .EOS_AT_STRING: return "EOS_AT_STRING"
            case .__EOS_EAttributeType_PAD_INT32__: return "__EOS_EAttributeType_PAD_INT32__"
            default: return "EOS_EAttributeType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAuthScopeFlags: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_AS_NoFlags: return "EOS_AS_NoFlags"
            case .EOS_AS_BasicProfile: return "EOS_AS_BasicProfile"
            case .EOS_AS_FriendsList: return "EOS_AS_FriendsList"
            case .EOS_AS_Presence: return "EOS_AS_Presence"
            case .EOS_AS_FriendsManagement: return "EOS_AS_FriendsManagement"
            case .EOS_AS_Email: return "EOS_AS_Email"
            case .__EOS_EAuthScopeFlags_PAD_INT32__: return "__EOS_EAuthScopeFlags_PAD_INT32__"
            default: return "EOS_EAuthScopeFlags(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EAuthTokenType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ATT_Client: return "EOS_ATT_Client"
            case .EOS_ATT_User: return "EOS_ATT_User"
            case .__EOS_EAuthTokenType_PAD_INT32__: return "__EOS_EAuthTokenType_PAD_INT32__"
            default: return "EOS_EAuthTokenType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EComparisonOp: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_CO_EQUAL: return "EOS_CO_EQUAL"
            case .EOS_CO_NOTEQUAL: return "EOS_CO_NOTEQUAL"
            case .EOS_CO_GREATERTHAN: return "EOS_CO_GREATERTHAN"
            case .EOS_CO_GREATERTHANOREQUAL: return "EOS_CO_GREATERTHANOREQUAL"
            case .EOS_CO_LESSTHAN: return "EOS_CO_LESSTHAN"
            case .EOS_CO_LESSTHANOREQUAL: return "EOS_CO_LESSTHANOREQUAL"
            case .EOS_CO_DISTANCE: return "EOS_CO_DISTANCE"
            case .EOS_CO_ANYOF: return "EOS_CO_ANYOF"
            case .EOS_CO_NOTANYOF: return "EOS_CO_NOTANYOF"
            case .EOS_CO_ONEOF: return "EOS_CO_ONEOF"
            case .EOS_CO_NOTONEOF: return "EOS_CO_NOTONEOF"
            case .EOS_CO_CONTAINS: return "EOS_CO_CONTAINS"
            case .__EOS_EComparisonOp_PAD_INT32__: return "__EOS_EComparisonOp_PAD_INT32__"
            default: return "EOS_EComparisonOp(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EConnectionClosedReason: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_CCR_Unknown: return "EOS_CCR_Unknown"
            case .EOS_CCR_ClosedByLocalUser: return "EOS_CCR_ClosedByLocalUser"
            case .EOS_CCR_ClosedByPeer: return "EOS_CCR_ClosedByPeer"
            case .EOS_CCR_TimedOut: return "EOS_CCR_TimedOut"
            case .EOS_CCR_TooManyConnections: return "EOS_CCR_TooManyConnections"
            case .EOS_CCR_InvalidMessage: return "EOS_CCR_InvalidMessage"
            case .EOS_CCR_InvalidData: return "EOS_CCR_InvalidData"
            case .EOS_CCR_ConnectionFailed: return "EOS_CCR_ConnectionFailed"
            case .EOS_CCR_ConnectionClosed: return "EOS_CCR_ConnectionClosed"
            case .EOS_CCR_NegotiationFailed: return "EOS_CCR_NegotiationFailed"
            case .EOS_CCR_UnexpectedError: return "EOS_CCR_UnexpectedError"
            case .__EOS_EConnectionClosedReason_PAD_INT32__: return "__EOS_EConnectionClosedReason_PAD_INT32__"
            default: return "EOS_EConnectionClosedReason(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EEcomItemType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_EIT_Durable: return "EOS_EIT_Durable"
            case .EOS_EIT_Consumable: return "EOS_EIT_Consumable"
            case .EOS_EIT_Other: return "EOS_EIT_Other"
            case .__EOS_EEcomItemType_PAD_INT32__: return "__EOS_EEcomItemType_PAD_INT32__"
            default: return "EOS_EEcomItemType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EExternalAccountType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_EAT_EPIC: return "EOS_EAT_EPIC"
            case .EOS_EAT_STEAM: return "EOS_EAT_STEAM"
            case .EOS_EAT_PSN: return "EOS_EAT_PSN"
            case .EOS_EAT_XBL: return "EOS_EAT_XBL"
            case .EOS_EAT_DISCORD: return "EOS_EAT_DISCORD"
            case .EOS_EAT_GOG: return "EOS_EAT_GOG"
            case .EOS_EAT_NINTENDO: return "EOS_EAT_NINTENDO"
            case .EOS_EAT_UPLAY: return "EOS_EAT_UPLAY"
            case .EOS_EAT_OPENID: return "EOS_EAT_OPENID"
            case .EOS_EAT_APPLE: return "EOS_EAT_APPLE"
            case .EOS_EAT_GOOGLE: return "EOS_EAT_GOOGLE"
            case .EOS_EAT_OCULUS: return "EOS_EAT_OCULUS"
            case .EOS_EAT_ITCHIO: return "EOS_EAT_ITCHIO"
            case .__EOS_EExternalAccountType_PAD_INT32__: return "__EOS_EExternalAccountType_PAD_INT32__"
            default: return "EOS_EExternalAccountType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EExternalCredentialType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_ECT_EPIC: return "EOS_ECT_EPIC"
            case .EOS_ECT_STEAM_APP_TICKET: return "EOS_ECT_STEAM_APP_TICKET"
            case .EOS_ECT_PSN_ID_TOKEN: return "EOS_ECT_PSN_ID_TOKEN"
            case .EOS_ECT_XBL_XSTS_TOKEN: return "EOS_ECT_XBL_XSTS_TOKEN"
            case .EOS_ECT_DISCORD_ACCESS_TOKEN: return "EOS_ECT_DISCORD_ACCESS_TOKEN"
            case .EOS_ECT_GOG_SESSION_TICKET: return "EOS_ECT_GOG_SESSION_TICKET"
            case .EOS_ECT_NINTENDO_ID_TOKEN: return "EOS_ECT_NINTENDO_ID_TOKEN"
            case .EOS_ECT_NINTENDO_NSA_ID_TOKEN: return "EOS_ECT_NINTENDO_NSA_ID_TOKEN"
            case .EOS_ECT_UPLAY_ACCESS_TOKEN: return "EOS_ECT_UPLAY_ACCESS_TOKEN"
            case .EOS_ECT_OPENID_ACCESS_TOKEN: return "EOS_ECT_OPENID_ACCESS_TOKEN"
            case .EOS_ECT_DEVICEID_ACCESS_TOKEN: return "EOS_ECT_DEVICEID_ACCESS_TOKEN"
            case .EOS_ECT_APPLE_ID_TOKEN: return "EOS_ECT_APPLE_ID_TOKEN"
            case .EOS_ECT_GOOGLE_ID_TOKEN: return "EOS_ECT_GOOGLE_ID_TOKEN"
            case .EOS_ECT_OCULUS_USERID_NONCE: return "EOS_ECT_OCULUS_USERID_NONCE"
            case .EOS_ECT_ITCHIO_JWT: return "EOS_ECT_ITCHIO_JWT"
            case .EOS_ECT_ITCHIO_KEY: return "EOS_ECT_ITCHIO_KEY"
            case .__EOS_EExternalCredentialType_PAD_INT32__: return "__EOS_EExternalCredentialType_PAD_INT32__"
            default: return "EOS_EExternalCredentialType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EFriendsStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_FS_NotFriends: return "EOS_FS_NotFriends"
            case .EOS_FS_InviteSent: return "EOS_FS_InviteSent"
            case .EOS_FS_InviteReceived: return "EOS_FS_InviteReceived"
            case .EOS_FS_Friends: return "EOS_FS_Friends"
            case .__EOS_EFriendsStatus_PAD_INT32__: return "__EOS_EFriendsStatus_PAD_INT32__"
            default: return "EOS_EFriendsStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EKWSPermissionStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_KPS_GRANTED: return "EOS_KPS_GRANTED"
            case .EOS_KPS_REJECTED: return "EOS_KPS_REJECTED"
            case .EOS_KPS_PENDING: return "EOS_KPS_PENDING"
            case .__EOS_EKWSPermissionStatus_PAD_INT32__: return "__EOS_EKWSPermissionStatus_PAD_INT32__"
            default: return "EOS_EKWSPermissionStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELeaderboardAggregation: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LA_Min: return "EOS_LA_Min"
            case .EOS_LA_Max: return "EOS_LA_Max"
            case .EOS_LA_Sum: return "EOS_LA_Sum"
            case .EOS_LA_Latest: return "EOS_LA_Latest"
            case .__EOS_ELeaderboardAggregation_PAD_INT32__: return "__EOS_ELeaderboardAggregation_PAD_INT32__"
            default: return "EOS_ELeaderboardAggregation(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELinkAccountFlags: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LA_NoFlags: return "EOS_LA_NoFlags"
            case .EOS_LA_NintendoNsaId: return "EOS_LA_NintendoNsaId"
            case .__EOS_ELinkAccountFlags_PAD_INT32__: return "__EOS_ELinkAccountFlags_PAD_INT32__"
            default: return "EOS_ELinkAccountFlags(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELobbyAttributeVisibility: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LAT_PUBLIC: return "EOS_LAT_PUBLIC"
            case .EOS_LAT_PRIVATE: return "EOS_LAT_PRIVATE"
            case .__EOS_ELobbyAttributeVisibility_PAD_INT32__: return "__EOS_ELobbyAttributeVisibility_PAD_INT32__"
            default: return "EOS_ELobbyAttributeVisibility(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELobbyMemberStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LMS_JOINED: return "EOS_LMS_JOINED"
            case .EOS_LMS_LEFT: return "EOS_LMS_LEFT"
            case .EOS_LMS_DISCONNECTED: return "EOS_LMS_DISCONNECTED"
            case .EOS_LMS_KICKED: return "EOS_LMS_KICKED"
            case .EOS_LMS_PROMOTED: return "EOS_LMS_PROMOTED"
            case .EOS_LMS_CLOSED: return "EOS_LMS_CLOSED"
            case .__EOS_ELobbyMemberStatus_PAD_INT32__: return "__EOS_ELobbyMemberStatus_PAD_INT32__"
            default: return "EOS_ELobbyMemberStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELobbyPermissionLevel: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LPL_PUBLICADVERTISED: return "EOS_LPL_PUBLICADVERTISED"
            case .EOS_LPL_JOINVIAPRESENCE: return "EOS_LPL_JOINVIAPRESENCE"
            case .EOS_LPL_INVITEONLY: return "EOS_LPL_INVITEONLY"
            case .__EOS_ELobbyPermissionLevel_PAD_INT32__: return "__EOS_ELobbyPermissionLevel_PAD_INT32__"
            default: return "EOS_ELobbyPermissionLevel(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELogCategory: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LC_Core: return "EOS_LC_Core"
            case .EOS_LC_Auth: return "EOS_LC_Auth"
            case .EOS_LC_Friends: return "EOS_LC_Friends"
            case .EOS_LC_Presence: return "EOS_LC_Presence"
            case .EOS_LC_UserInfo: return "EOS_LC_UserInfo"
            case .EOS_LC_HttpSerialization: return "EOS_LC_HttpSerialization"
            case .EOS_LC_Ecom: return "EOS_LC_Ecom"
            case .EOS_LC_P2P: return "EOS_LC_P2P"
            case .EOS_LC_Sessions: return "EOS_LC_Sessions"
            case .EOS_LC_RateLimiter: return "EOS_LC_RateLimiter"
            case .EOS_LC_PlayerDataStorage: return "EOS_LC_PlayerDataStorage"
            case .EOS_LC_Analytics: return "EOS_LC_Analytics"
            case .EOS_LC_Messaging: return "EOS_LC_Messaging"
            case .EOS_LC_Connect: return "EOS_LC_Connect"
            case .EOS_LC_Overlay: return "EOS_LC_Overlay"
            case .EOS_LC_Achievements: return "EOS_LC_Achievements"
            case .EOS_LC_Stats: return "EOS_LC_Stats"
            case .EOS_LC_UI: return "EOS_LC_UI"
            case .EOS_LC_Lobby: return "EOS_LC_Lobby"
            case .EOS_LC_Leaderboards: return "EOS_LC_Leaderboards"
            case .EOS_LC_Keychain: return "EOS_LC_Keychain"
            case .EOS_LC_IdentityProvider: return "EOS_LC_IdentityProvider"
            case .EOS_LC_TitleStorage: return "EOS_LC_TitleStorage"
            case .EOS_LC_Mods: return "EOS_LC_Mods"
            case .EOS_LC_AntiCheat: return "EOS_LC_AntiCheat"
            case .EOS_LC_Reports: return "EOS_LC_Reports"
            case .EOS_LC_Sanctions: return "EOS_LC_Sanctions"
            case .EOS_LC_ProgressionSnapshots: return "EOS_LC_ProgressionSnapshots"
            case .EOS_LC_KWS: return "EOS_LC_KWS"
            case .EOS_LC_RTC: return "EOS_LC_RTC"
            case .EOS_LC_RTCAdmin: return "EOS_LC_RTCAdmin"
            case .EOS_LC_ALL_CATEGORIES: return "EOS_LC_ALL_CATEGORIES"
            case .__EOS_ELogCategory_PAD_INT32__: return "__EOS_ELogCategory_PAD_INT32__"
            default: return "EOS_ELogCategory(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELogLevel: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LOG_Off: return "EOS_LOG_Off"
            case .EOS_LOG_Fatal: return "EOS_LOG_Fatal"
            case .EOS_LOG_Error: return "EOS_LOG_Error"
            case .EOS_LOG_Warning: return "EOS_LOG_Warning"
            case .EOS_LOG_Info: return "EOS_LOG_Info"
            case .EOS_LOG_Verbose: return "EOS_LOG_Verbose"
            case .EOS_LOG_VeryVerbose: return "EOS_LOG_VeryVerbose"
            case .__EOS_ELogLevel_PAD_INT32__: return "__EOS_ELogLevel_PAD_INT32__"
            default: return "EOS_ELogLevel(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELoginCredentialType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LCT_Password: return "EOS_LCT_Password"
            case .EOS_LCT_ExchangeCode: return "EOS_LCT_ExchangeCode"
            case .EOS_LCT_PersistentAuth: return "EOS_LCT_PersistentAuth"
            case .EOS_LCT_DeviceCode: return "EOS_LCT_DeviceCode"
            case .EOS_LCT_Developer: return "EOS_LCT_Developer"
            case .EOS_LCT_RefreshToken: return "EOS_LCT_RefreshToken"
            case .EOS_LCT_AccountPortal: return "EOS_LCT_AccountPortal"
            case .EOS_LCT_ExternalAuth: return "EOS_LCT_ExternalAuth"
            case .__EOS_ELoginCredentialType_PAD_INT32__: return "__EOS_ELoginCredentialType_PAD_INT32__"
            default: return "EOS_ELoginCredentialType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ELoginStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_LS_NotLoggedIn: return "EOS_LS_NotLoggedIn"
            case .EOS_LS_UsingLocalProfile: return "EOS_LS_UsingLocalProfile"
            case .EOS_LS_LoggedIn: return "EOS_LS_LoggedIn"
            case .__EOS_ELoginStatus_PAD_INT32__: return "__EOS_ELoginStatus_PAD_INT32__"
            default: return "EOS_ELoginStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EMetricsAccountIdType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_MAIT_Epic: return "EOS_MAIT_Epic"
            case .EOS_MAIT_External: return "EOS_MAIT_External"
            case .__EOS_EMetricsAccountIdType_PAD_INT32__: return "__EOS_EMetricsAccountIdType_PAD_INT32__"
            default: return "EOS_EMetricsAccountIdType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EModEnumerationType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_MET_INSTALLED: return "EOS_MET_INSTALLED"
            case .EOS_MET_ALL_AVAILABLE: return "EOS_MET_ALL_AVAILABLE"
            case .__EOS_EModEnumerationType_PAD_INT32__: return "__EOS_EModEnumerationType_PAD_INT32__"
            default: return "EOS_EModEnumerationType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ENATType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_NAT_Unknown: return "EOS_NAT_Unknown"
            case .EOS_NAT_Open: return "EOS_NAT_Open"
            case .EOS_NAT_Moderate: return "EOS_NAT_Moderate"
            case .EOS_NAT_Strict: return "EOS_NAT_Strict"
            case .__EOS_ENATType_PAD_INT32__: return "__EOS_ENATType_PAD_INT32__"
            default: return "EOS_ENATType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EOnlineSessionPermissionLevel: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_OSPF_PublicAdvertised: return "EOS_OSPF_PublicAdvertised"
            case .EOS_OSPF_JoinViaPresence: return "EOS_OSPF_JoinViaPresence"
            case .EOS_OSPF_InviteOnly: return "EOS_OSPF_InviteOnly"
            case .__EOS_EOnlineSessionPermissionLevel_PAD_INT32__: return "__EOS_EOnlineSessionPermissionLevel_PAD_INT32__"
            default: return "EOS_EOnlineSessionPermissionLevel(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EOnlineSessionState: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_OSS_NoSession: return "EOS_OSS_NoSession"
            case .EOS_OSS_Creating: return "EOS_OSS_Creating"
            case .EOS_OSS_Pending: return "EOS_OSS_Pending"
            case .EOS_OSS_Starting: return "EOS_OSS_Starting"
            case .EOS_OSS_InProgress: return "EOS_OSS_InProgress"
            case .EOS_OSS_Ending: return "EOS_OSS_Ending"
            case .EOS_OSS_Ended: return "EOS_OSS_Ended"
            case .EOS_OSS_Destroying: return "EOS_OSS_Destroying"
            case .__EOS_EOnlineSessionState_PAD_INT32__: return "__EOS_EOnlineSessionState_PAD_INT32__"
            default: return "EOS_EOnlineSessionState(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EOwnershipStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_OS_NotOwned: return "EOS_OS_NotOwned"
            case .EOS_OS_Owned: return "EOS_OS_Owned"
            case .__EOS_EOwnershipStatus_PAD_INT32__: return "__EOS_EOwnershipStatus_PAD_INT32__"
            default: return "EOS_EOwnershipStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EPacketReliability: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_PR_UnreliableUnordered: return "EOS_PR_UnreliableUnordered"
            case .EOS_PR_ReliableUnordered: return "EOS_PR_ReliableUnordered"
            case .EOS_PR_ReliableOrdered: return "EOS_PR_ReliableOrdered"
            case .__EOS_EPacketReliability_PAD_INT32__: return "__EOS_EPacketReliability_PAD_INT32__"
            default: return "EOS_EPacketReliability(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EPlayerReportsCategory: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_PRC_Invalid: return "EOS_PRC_Invalid"
            case .EOS_PRC_Cheating: return "EOS_PRC_Cheating"
            case .EOS_PRC_Exploiting: return "EOS_PRC_Exploiting"
            case .EOS_PRC_OffensiveProfile: return "EOS_PRC_OffensiveProfile"
            case .EOS_PRC_VerbalAbuse: return "EOS_PRC_VerbalAbuse"
            case .EOS_PRC_Scamming: return "EOS_PRC_Scamming"
            case .EOS_PRC_Spamming: return "EOS_PRC_Spamming"
            case .EOS_PRC_Other: return "EOS_PRC_Other"
            case .__EOS_EPlayerReportsCategory_PAD_INT32__: return "__EOS_EPlayerReportsCategory_PAD_INT32__"
            default: return "EOS_EPlayerReportsCategory(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ERTCAudioInputStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_RTCAIS_Idle: return "EOS_RTCAIS_Idle"
            case .EOS_RTCAIS_Recording: return "EOS_RTCAIS_Recording"
            case .EOS_RTCAIS_RecordingSilent: return "EOS_RTCAIS_RecordingSilent"
            case .EOS_RTCAIS_RecordingDisconnected: return "EOS_RTCAIS_RecordingDisconnected"
            case .EOS_RTCAIS_Failed: return "EOS_RTCAIS_Failed"
            case .__EOS_ERTCAudioInputStatus_PAD_INT32__: return "__EOS_ERTCAudioInputStatus_PAD_INT32__"
            default: return "EOS_ERTCAudioInputStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ERTCAudioOutputStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_RTCAOS_Idle: return "EOS_RTCAOS_Idle"
            case .EOS_RTCAOS_Playing: return "EOS_RTCAOS_Playing"
            case .EOS_RTCAOS_Failed: return "EOS_RTCAOS_Failed"
            case .__EOS_ERTCAudioOutputStatus_PAD_INT32__: return "__EOS_ERTCAudioOutputStatus_PAD_INT32__"
            default: return "EOS_ERTCAudioOutputStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ERTCAudioStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_RTCAS_Unsupported: return "EOS_RTCAS_Unsupported"
            case .EOS_RTCAS_Enabled: return "EOS_RTCAS_Enabled"
            case .EOS_RTCAS_Disabled: return "EOS_RTCAS_Disabled"
            case .EOS_RTCAS_AdminDisabled: return "EOS_RTCAS_AdminDisabled"
            case .EOS_RTCAS_NotListeningDisabled: return "EOS_RTCAS_NotListeningDisabled"
            case .__EOS_ERTCAudioStatus_PAD_INT32__: return "__EOS_ERTCAudioStatus_PAD_INT32__"
            default: return "EOS_ERTCAudioStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ERTCParticipantStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_RTCPS_Joined: return "EOS_RTCPS_Joined"
            case .EOS_RTCPS_Left: return "EOS_RTCPS_Left"
            case .__EOS_ERTCParticipantStatus_PAD_INT32__: return "__EOS_ERTCParticipantStatus_PAD_INT32__"
            default: return "EOS_ERTCParticipantStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ERelayControl: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_RC_NoRelays: return "EOS_RC_NoRelays"
            case .EOS_RC_AllowRelays: return "EOS_RC_AllowRelays"
            case .EOS_RC_ForceRelays: return "EOS_RC_ForceRelays"
            case .__EOS_ERelayControl_PAD_INT32__: return "__EOS_ERelayControl_PAD_INT32__"
            default: return "EOS_ERelayControl(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_ESessionAttributeAdvertisementType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_SAAT_DontAdvertise: return "EOS_SAAT_DontAdvertise"
            case .EOS_SAAT_Advertise: return "EOS_SAAT_Advertise"
            case .__EOS_ESessionAttributeAdvertisementType_PAD_INT32__: return "__EOS_ESessionAttributeAdvertisementType_PAD_INT32__"
            default: return "EOS_ESessionAttributeAdvertisementType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_EUserControllerType: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_UCT_Unknown: return "EOS_UCT_Unknown"
            case .EOS_UCT_MouseKeyboard: return "EOS_UCT_MouseKeyboard"
            case .EOS_UCT_GamepadControl: return "EOS_UCT_GamepadControl"
            case .EOS_UCT_TouchControl: return "EOS_UCT_TouchControl"
            case .__EOS_EUserControllerType_PAD_INT32__: return "__EOS_EUserControllerType_PAD_INT32__"
            default: return "EOS_EUserControllerType(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_PlayerDataStorage_EReadResult: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_RR_ContinueReading: return "EOS_RR_ContinueReading"
            case .EOS_RR_FailRequest: return "EOS_RR_FailRequest"
            case .EOS_RR_CancelRequest: return "EOS_RR_CancelRequest"
            case .__EOS_PlayerDataStorage_EReadResult_PAD_INT32__: return "__EOS_PlayerDataStorage_EReadResult_PAD_INT32__"
            default: return "EOS_PlayerDataStorage_EReadResult(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_PlayerDataStorage_EWriteResult: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_WR_ContinueWriting: return "EOS_WR_ContinueWriting"
            case .EOS_WR_CompleteRequest: return "EOS_WR_CompleteRequest"
            case .EOS_WR_FailRequest: return "EOS_WR_FailRequest"
            case .EOS_WR_CancelRequest: return "EOS_WR_CancelRequest"
            case .__EOS_PlayerDataStorage_EWriteResult_PAD_INT32__: return "__EOS_PlayerDataStorage_EWriteResult_PAD_INT32__"
            default: return "EOS_PlayerDataStorage_EWriteResult(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_Presence_EStatus: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_PS_Offline: return "EOS_PS_Offline"
            case .EOS_PS_Online: return "EOS_PS_Online"
            case .EOS_PS_Away: return "EOS_PS_Away"
            case .EOS_PS_ExtendedAway: return "EOS_PS_ExtendedAway"
            case .EOS_PS_DoNotDisturb: return "EOS_PS_DoNotDisturb"
            case .__EOS_Presence_EStatus_PAD_INT32__: return "__EOS_Presence_EStatus_PAD_INT32__"
            default: return "EOS_Presence_EStatus(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_TitleStorage_EReadResult: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_TS_RR_ContinueReading: return "EOS_TS_RR_ContinueReading"
            case .EOS_TS_RR_FailRequest: return "EOS_TS_RR_FailRequest"
            case .EOS_TS_RR_CancelRequest: return "EOS_TS_RR_CancelRequest"
            case .__EOS_TitleStorage_EReadResult_PAD_INT32__: return "__EOS_TitleStorage_EReadResult_PAD_INT32__"
            default: return "EOS_TitleStorage_EReadResult(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_UI_EKeyCombination: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_UIK_ModifierShift: return "EOS_UIK_ModifierShift"
            case .EOS_UIK_KeyTypeMask: return "EOS_UIK_KeyTypeMask"
            case .EOS_UIK_ModifierMask: return "EOS_UIK_ModifierMask"
            case .EOS_UIK_Shift: return "EOS_UIK_Shift"
            case .EOS_UIK_Control: return "EOS_UIK_Control"
            case .EOS_UIK_Alt: return "EOS_UIK_Alt"
            case .EOS_UIK_Meta: return "EOS_UIK_Meta"
            case .EOS_UIK_ValidModifierMask: return "EOS_UIK_ValidModifierMask"
            case .EOS_UIK_None: return "EOS_UIK_None"
            case .EOS_UIK_Space: return "EOS_UIK_Space"
            case .EOS_UIK_Backspace: return "EOS_UIK_Backspace"
            case .EOS_UIK_Tab: return "EOS_UIK_Tab"
            case .EOS_UIK_Escape: return "EOS_UIK_Escape"
            case .EOS_UIK_PageUp: return "EOS_UIK_PageUp"
            case .EOS_UIK_PageDown: return "EOS_UIK_PageDown"
            case .EOS_UIK_End: return "EOS_UIK_End"
            case .EOS_UIK_Home: return "EOS_UIK_Home"
            case .EOS_UIK_Insert: return "EOS_UIK_Insert"
            case .EOS_UIK_Delete: return "EOS_UIK_Delete"
            case .EOS_UIK_Left: return "EOS_UIK_Left"
            case .EOS_UIK_Up: return "EOS_UIK_Up"
            case .EOS_UIK_Right: return "EOS_UIK_Right"
            case .EOS_UIK_Down: return "EOS_UIK_Down"
            case .EOS_UIK_Key0: return "EOS_UIK_Key0"
            case .EOS_UIK_Key1: return "EOS_UIK_Key1"
            case .EOS_UIK_Key2: return "EOS_UIK_Key2"
            case .EOS_UIK_Key3: return "EOS_UIK_Key3"
            case .EOS_UIK_Key4: return "EOS_UIK_Key4"
            case .EOS_UIK_Key5: return "EOS_UIK_Key5"
            case .EOS_UIK_Key6: return "EOS_UIK_Key6"
            case .EOS_UIK_Key7: return "EOS_UIK_Key7"
            case .EOS_UIK_Key8: return "EOS_UIK_Key8"
            case .EOS_UIK_Key9: return "EOS_UIK_Key9"
            case .EOS_UIK_KeyA: return "EOS_UIK_KeyA"
            case .EOS_UIK_KeyB: return "EOS_UIK_KeyB"
            case .EOS_UIK_KeyC: return "EOS_UIK_KeyC"
            case .EOS_UIK_KeyD: return "EOS_UIK_KeyD"
            case .EOS_UIK_KeyE: return "EOS_UIK_KeyE"
            case .EOS_UIK_KeyF: return "EOS_UIK_KeyF"
            case .EOS_UIK_KeyG: return "EOS_UIK_KeyG"
            case .EOS_UIK_KeyH: return "EOS_UIK_KeyH"
            case .EOS_UIK_KeyI: return "EOS_UIK_KeyI"
            case .EOS_UIK_KeyJ: return "EOS_UIK_KeyJ"
            case .EOS_UIK_KeyK: return "EOS_UIK_KeyK"
            case .EOS_UIK_KeyL: return "EOS_UIK_KeyL"
            case .EOS_UIK_KeyM: return "EOS_UIK_KeyM"
            case .EOS_UIK_KeyN: return "EOS_UIK_KeyN"
            case .EOS_UIK_KeyO: return "EOS_UIK_KeyO"
            case .EOS_UIK_KeyP: return "EOS_UIK_KeyP"
            case .EOS_UIK_KeyQ: return "EOS_UIK_KeyQ"
            case .EOS_UIK_KeyR: return "EOS_UIK_KeyR"
            case .EOS_UIK_KeyS: return "EOS_UIK_KeyS"
            case .EOS_UIK_KeyT: return "EOS_UIK_KeyT"
            case .EOS_UIK_KeyU: return "EOS_UIK_KeyU"
            case .EOS_UIK_KeyV: return "EOS_UIK_KeyV"
            case .EOS_UIK_KeyW: return "EOS_UIK_KeyW"
            case .EOS_UIK_KeyX: return "EOS_UIK_KeyX"
            case .EOS_UIK_KeyY: return "EOS_UIK_KeyY"
            case .EOS_UIK_KeyZ: return "EOS_UIK_KeyZ"
            case .EOS_UIK_Numpad0: return "EOS_UIK_Numpad0"
            case .EOS_UIK_Numpad1: return "EOS_UIK_Numpad1"
            case .EOS_UIK_Numpad2: return "EOS_UIK_Numpad2"
            case .EOS_UIK_Numpad3: return "EOS_UIK_Numpad3"
            case .EOS_UIK_Numpad4: return "EOS_UIK_Numpad4"
            case .EOS_UIK_Numpad5: return "EOS_UIK_Numpad5"
            case .EOS_UIK_Numpad6: return "EOS_UIK_Numpad6"
            case .EOS_UIK_Numpad7: return "EOS_UIK_Numpad7"
            case .EOS_UIK_Numpad8: return "EOS_UIK_Numpad8"
            case .EOS_UIK_Numpad9: return "EOS_UIK_Numpad9"
            case .EOS_UIK_NumpadAsterisk: return "EOS_UIK_NumpadAsterisk"
            case .EOS_UIK_NumpadPlus: return "EOS_UIK_NumpadPlus"
            case .EOS_UIK_NumpadMinus: return "EOS_UIK_NumpadMinus"
            case .EOS_UIK_NumpadPeriod: return "EOS_UIK_NumpadPeriod"
            case .EOS_UIK_NumpadDivide: return "EOS_UIK_NumpadDivide"
            case .EOS_UIK_F1: return "EOS_UIK_F1"
            case .EOS_UIK_F2: return "EOS_UIK_F2"
            case .EOS_UIK_F3: return "EOS_UIK_F3"
            case .EOS_UIK_F4: return "EOS_UIK_F4"
            case .EOS_UIK_F5: return "EOS_UIK_F5"
            case .EOS_UIK_F6: return "EOS_UIK_F6"
            case .EOS_UIK_F7: return "EOS_UIK_F7"
            case .EOS_UIK_F8: return "EOS_UIK_F8"
            case .EOS_UIK_F9: return "EOS_UIK_F9"
            case .EOS_UIK_F10: return "EOS_UIK_F10"
            case .EOS_UIK_F11: return "EOS_UIK_F11"
            case .EOS_UIK_F12: return "EOS_UIK_F12"
            case .EOS_UIK_F13: return "EOS_UIK_F13"
            case .EOS_UIK_F14: return "EOS_UIK_F14"
            case .EOS_UIK_F15: return "EOS_UIK_F15"
            case .EOS_UIK_F16: return "EOS_UIK_F16"
            case .EOS_UIK_F17: return "EOS_UIK_F17"
            case .EOS_UIK_F18: return "EOS_UIK_F18"
            case .EOS_UIK_F19: return "EOS_UIK_F19"
            case .EOS_UIK_F20: return "EOS_UIK_F20"
            case .EOS_UIK_F21: return "EOS_UIK_F21"
            case .EOS_UIK_F22: return "EOS_UIK_F22"
            case .EOS_UIK_F23: return "EOS_UIK_F23"
            case .EOS_UIK_F24: return "EOS_UIK_F24"
            case .EOS_UIK_OemPlus: return "EOS_UIK_OemPlus"
            case .EOS_UIK_OemComma: return "EOS_UIK_OemComma"
            case .EOS_UIK_OemMinus: return "EOS_UIK_OemMinus"
            case .EOS_UIK_OemPeriod: return "EOS_UIK_OemPeriod"
            case .EOS_UIK_Oem1: return "EOS_UIK_Oem1"
            case .EOS_UIK_Oem2: return "EOS_UIK_Oem2"
            case .EOS_UIK_Oem3: return "EOS_UIK_Oem3"
            case .EOS_UIK_Oem4: return "EOS_UIK_Oem4"
            case .EOS_UIK_Oem5: return "EOS_UIK_Oem5"
            case .EOS_UIK_Oem6: return "EOS_UIK_Oem6"
            case .EOS_UIK_Oem7: return "EOS_UIK_Oem7"
            case .EOS_UIK_Oem8: return "EOS_UIK_Oem8"
            case .EOS_UIK_MaxKeyType: return "EOS_UIK_MaxKeyType"
            case .__EOS_UI_EKeyCombination_PAD_INT32__: return "__EOS_UI_EKeyCombination_PAD_INT32__"
            default: return "EOS_UI_EKeyCombination(rawValue: \(self.rawValue))"
        }
    }
}
extension EOS_UI_ENotificationLocation: CustomStringConvertible {
    public var description: String {
        switch self {
            case .EOS_UNL_TopLeft: return "EOS_UNL_TopLeft"
            case .EOS_UNL_TopRight: return "EOS_UNL_TopRight"
            case .EOS_UNL_BottomLeft: return "EOS_UNL_BottomLeft"
            case .EOS_UNL_BottomRight: return "EOS_UNL_BottomRight"
            case .__EOS_UI_ENotificationLocation_PAD_INT32__: return "__EOS_UI_ENotificationLocation_PAD_INT32__"
            default: return "EOS_UI_ENotificationLocation(rawValue: \(self.rawValue))"
        }
    }
}
