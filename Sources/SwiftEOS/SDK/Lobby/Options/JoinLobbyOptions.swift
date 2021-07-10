import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_JoinLobby function. */
public struct SwiftEOS_Lobby_JoinLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_JOINLOBBY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The handle of the lobby to join  */
    public let LobbyDetailsHandle: EOS_HLobbyDetails?

    /** The Product User ID of the local user joining the lobby  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * If true, this lobby will be associated with the user's presence information. A user can only associate one lobby at a time with their presence information.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * - Note:  The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * - SeeAlso:  EOS_PresenceModification_SetJoinInfoOptions
     * - SeeAlso:  EOS_Lobby_CreateLobbyOptions
     * - SeeAlso:  EOS_Lobby_JoinLobbyOptions
     * - SeeAlso:  EOS_Sessions_CreateSessionModificationOptions
     * - SeeAlso:  EOS_Sessions_JoinSessionOptions
     */
    public let bPresenceEnabled: Bool

    /**
     * (Optional) Set this value to override the default local options for the RTC Room, if it is enabled for this lobby. Set this to NULL if
     * your application does not use the Lobby RTC Rooms feature, or if you would like to use the default settings. This option is ignored if
     * the specified lobby does not have an RTC Room enabled and will not cause errors.
     */
    public let LocalRTCOptions: SwiftEOS_Lobby_LocalRTCOptions?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_JoinLobbyOptions {
        try _tagEOS_Lobby_JoinLobbyOptions(
            ApiVersion: ApiVersion,
            LobbyDetailsHandle: LobbyDetailsHandle,
            LocalUserId: LocalUserId,
            bPresenceEnabled: eosBoolFromSwiftBool(bPresenceEnabled),
            LocalRTCOptions: try pointerManager.managedPointer(copyingValueOrNilPointer: LocalRTCOptions?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_JoinLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyDetailsHandle = sdkObject.LobbyDetailsHandle
        self.LocalUserId = sdkObject.LocalUserId
        self.bPresenceEnabled = try swiftBoolFromEosBool(sdkObject.bPresenceEnabled)
        self.LocalRTCOptions = try SwiftEOS_Lobby_LocalRTCOptions.init(sdkObject: sdkObject.LocalRTCOptions.pointee)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LOBBY_JOINLOBBY_API_LATEST. 
     * - Parameter LobbyDetailsHandle:  The handle of the lobby to join 
     * - Parameter LocalUserId:  The Product User ID of the local user joining the lobby 
     * - Parameter bPresenceEnabled:  If true, this lobby will be associated with the user's presence information. A user can only associate one lobby at a time with their presence information.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * - Note:  The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * - SeeAlso:  EOS_PresenceModification_SetJoinInfoOptions
     * - SeeAlso:  EOS_Lobby_CreateLobbyOptions
     * - SeeAlso:  EOS_Lobby_JoinLobbyOptions
     * - SeeAlso:  EOS_Sessions_CreateSessionModificationOptions
     * - SeeAlso:  EOS_Sessions_JoinSessionOptions
     * - Parameter LocalRTCOptions:  (Optional) Set this value to override the default local options for the RTC Room, if it is enabled for this lobby. Set this to NULL if
     * your application does not use the Lobby RTC Rooms feature, or if you would like to use the default settings. This option is ignored if
     * the specified lobby does not have an RTC Room enabled and will not cause errors.
     */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_JOINLOBBY_API_LATEST,
        LobbyDetailsHandle: EOS_HLobbyDetails?,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool,
        LocalRTCOptions: SwiftEOS_Lobby_LocalRTCOptions?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyDetailsHandle = LobbyDetailsHandle
        self.LocalUserId = LocalUserId
        self.bPresenceEnabled = bPresenceEnabled
        self.LocalRTCOptions = LocalRTCOptions
    }
}
