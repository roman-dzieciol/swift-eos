import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_CreateLobby function. */
public struct SwiftEOS_Lobby_CreateLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_CREATELOBBY_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user creating the lobby; this user will automatically join the lobby as its owner */
    public let LocalUserId: EOS_ProductUserId?

    /** The maximum number of users who can be in the lobby at a time */
    public let MaxLobbyMembers: Int

    /** The initial permission level of the lobby */
    public let PermissionLevel: EOS_ELobbyPermissionLevel

    /**
    If true, this lobby will be associated with presence information. A user's presence can only be associated with one lobby at a time.This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.

    - Note: The Social Overlay can handle only one of the following three options at a time:* using the bPresenceEnabled flags within the Sessions interface * using the bPresenceEnabled flags within the Lobby interface * using EOS_PresenceModification_SetJoinInfo
    - SeeAlso: EOS_PresenceModification_SetJoinInfoOptions
    - SeeAlso: EOS_Lobby_JoinLobbyOptions
    - SeeAlso: EOS_Sessions_CreateSessionModificationOptions
    - SeeAlso: EOS_Sessions_JoinSessionOptions
    */
    public let bPresenceEnabled: Bool

    /** Are members of the lobby allowed to invite others */
    public let bAllowInvites: Bool

    /** Bucket ID associated with the lobby */
    public let BucketId: String?

    /**
    Is host migration allowed (will the lobby stay open if the original host leaves?)NOTE: EOS_Lobby_PromoteMember is still allowed regardless of this setting
    */
    public let bDisableHostMigration: Bool

    /**
    Creates a real-time communication (RTC) room for all members of this lobby. All members of the lobby will automatically join the RTC room when they connect to the lobby and they will automatically leave the RTC room when they leave or are removed from the lobby.While the joining and leaving of the RTC room is automatic, applications will still need to use the EOS RTC interfaces to handle all other functionality for the room.

    - SeeAlso: EOS_Lobby_GetRTCRoomName
    - SeeAlso: EOS_Lobby_AddNotifyRTCRoomConnectionChanged
    */
    public let bEnableRTCRoom: Bool

    /**
    (Optional) Allows the local application to set local audio options for the RTC Room if it is enabled. Set this to NULL if the RTC RTC room is disabled or you would like to use the defaults.
    */
    public let LocalRTCOptions: SwiftEOS_Lobby_LocalRTCOptions?

    /**
    (Optional) Set to a globally unique value to override the backend assignment If not specified the backend service will assign one to the lobby.  Do not mix and match override and non override settings.This value can be of size [EOS_LOBBY_MIN_LOBBYIDOVERRIDE_LENGTH, EOS_LOBBY_MAX_LOBBYIDOVERRIDE_LENGTH]
    */
    public let LobbyId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CreateLobbyOptions {
        try _tagEOS_Lobby_CreateLobbyOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            MaxLobbyMembers: try safeNumericCast(exactly: MaxLobbyMembers),
            PermissionLevel: PermissionLevel,
            bPresenceEnabled: eosBoolFromSwiftBool(bPresenceEnabled),
            bAllowInvites: eosBoolFromSwiftBool(bAllowInvites),
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString),
            bDisableHostMigration: eosBoolFromSwiftBool(bDisableHostMigration),
            bEnableRTCRoom: eosBoolFromSwiftBool(bEnableRTCRoom),
            LocalRTCOptions: try pointerManager.managedPointer(copyingValueOrNilPointer: LocalRTCOptions?.buildSdkObject(pointerManager: pointerManager)),
            LobbyId: pointerManager.managedPointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CreateLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.MaxLobbyMembers = try safeNumericCast(exactly: sdkObject.MaxLobbyMembers)
        self.PermissionLevel = sdkObject.PermissionLevel
        self.bPresenceEnabled = try swiftBoolFromEosBool(sdkObject.bPresenceEnabled)
        self.bAllowInvites = try swiftBoolFromEosBool(sdkObject.bAllowInvites)
        self.BucketId = String(cString: sdkObject.BucketId)
        self.bDisableHostMigration = try swiftBoolFromEosBool(sdkObject.bDisableHostMigration)
        self.bEnableRTCRoom = try swiftBoolFromEosBool(sdkObject.bEnableRTCRoom)
        self.LocalRTCOptions = try SwiftEOS_Lobby_LocalRTCOptions.init(sdkObject: sdkObject.LocalRTCOptions.pointee)
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LOBBY_CREATELOBBY_API_LATEST.
    - Parameter LocalUserId: The Product User ID of the local user creating the lobby; this user will automatically join the lobby as its owner
    - Parameter MaxLobbyMembers: The maximum number of users who can be in the lobby at a time
    - Parameter PermissionLevel: The initial permission level of the lobby
    - Parameter bPresenceEnabled: If true, this lobby will be associated with presence information. A user's presence can only be associated with one lobby at a time.This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
    - Note: The Social Overlay can handle only one of the following three options at a time:* using the bPresenceEnabled flags within the Sessions interface * using the bPresenceEnabled flags within the Lobby interface * using EOS_PresenceModification_SetJoinInfo
    - SeeAlso: EOS_PresenceModification_SetJoinInfoOptions
    - SeeAlso: EOS_Lobby_JoinLobbyOptions
    - SeeAlso: EOS_Sessions_CreateSessionModificationOptions
    - SeeAlso: EOS_Sessions_JoinSessionOptions
    - Parameter bAllowInvites: Are members of the lobby allowed to invite others
    - Parameter BucketId: Bucket ID associated with the lobby
    - Parameter bDisableHostMigration: Is host migration allowed (will the lobby stay open if the original host leaves?)NOTE: EOS_Lobby_PromoteMember is still allowed regardless of this setting
    - Parameter bEnableRTCRoom: Creates a real-time communication (RTC) room for all members of this lobby. All members of the lobby will automatically join the RTC room when they connect to the lobby and they will automatically leave the RTC room when they leave or are removed from the lobby.While the joining and leaving of the RTC room is automatic, applications will still need to use the EOS RTC interfaces to handle all other functionality for the room.
    - SeeAlso: EOS_Lobby_GetRTCRoomName
    - SeeAlso: EOS_Lobby_AddNotifyRTCRoomConnectionChanged
    - Parameter LocalRTCOptions: (Optional) Allows the local application to set local audio options for the RTC Room if it is enabled. Set this to NULL if the RTC RTC room is disabled or you would like to use the defaults.
    - Parameter LobbyId: (Optional) Set to a globally unique value to override the backend assignment If not specified the backend service will assign one to the lobby.  Do not mix and match override and non override settings.This value can be of size [EOS_LOBBY_MIN_LOBBYIDOVERRIDE_LENGTH, EOS_LOBBY_MAX_LOBBYIDOVERRIDE_LENGTH]
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_CREATELOBBY_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        MaxLobbyMembers: Int,
        PermissionLevel: EOS_ELobbyPermissionLevel,
        bPresenceEnabled: Bool,
        bAllowInvites: Bool,
        BucketId: String?,
        bDisableHostMigration: Bool,
        bEnableRTCRoom: Bool,
        LocalRTCOptions: SwiftEOS_Lobby_LocalRTCOptions?,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.MaxLobbyMembers = MaxLobbyMembers
        self.PermissionLevel = PermissionLevel
        self.bPresenceEnabled = bPresenceEnabled
        self.bAllowInvites = bAllowInvites
        self.BucketId = BucketId
        self.bDisableHostMigration = bDisableHostMigration
        self.bEnableRTCRoom = bEnableRTCRoom
        self.LocalRTCOptions = LocalRTCOptions
        self.LobbyId = LobbyId
    }
}
