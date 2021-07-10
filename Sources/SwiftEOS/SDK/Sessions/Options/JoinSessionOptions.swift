import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_JoinSession function. */
public struct SwiftEOS_Sessions_JoinSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_JOINSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session to create after joining session  */
    public let SessionName: String?

    /** Session handle to join  */
    public let SessionHandle: EOS_HSessionDetails?

    /** The Product User ID of the local user who is joining the session  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * 
     * If true, this session will be associated with presence. Only one session at a time can have this flag true.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * @note The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * @see EOS_PresenceModification_SetJoinInfoOptions
     * @see EOS_Lobby_CreateLobbyOptions
     * @see EOS_Lobby_JoinLobbyOptions
     * @see EOS_Sessions_CreateSessionModificationOptions
     */
    public let bPresenceEnabled: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_JoinSessionOptions {
        _tagEOS_Sessions_JoinSessionOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            SessionHandle: SessionHandle,
            LocalUserId: LocalUserId,
            bPresenceEnabled: eosBoolFromSwiftBool(bPresenceEnabled)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_JoinSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.SessionHandle = sdkObject.SessionHandle
        self.LocalUserId = sdkObject.LocalUserId
        self.bPresenceEnabled = try swiftBoolFromEosBool(sdkObject.bPresenceEnabled)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONS_JOINSESSION_API_LATEST. 
     * - Parameter SessionName:  Name of the session to create after joining session 
     * - Parameter SessionHandle:  Session handle to join 
     * - Parameter LocalUserId:  The Product User ID of the local user who is joining the session 
     * - Parameter bPresenceEnabled:  
     * If true, this session will be associated with presence. Only one session at a time can have this flag true.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * @note The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * @see EOS_PresenceModification_SetJoinInfoOptions
     * @see EOS_Lobby_CreateLobbyOptions
     * @see EOS_Lobby_JoinLobbyOptions
     * @see EOS_Sessions_CreateSessionModificationOptions
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_JOINSESSION_API_LATEST,
        SessionName: String?,
        SessionHandle: EOS_HSessionDetails?,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.SessionHandle = SessionHandle
        self.LocalUserId = LocalUserId
        self.bPresenceEnabled = bPresenceEnabled
    }
}
