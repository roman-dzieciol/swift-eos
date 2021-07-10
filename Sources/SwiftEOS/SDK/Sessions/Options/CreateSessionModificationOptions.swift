import Foundation
import EOSSDK

/** Input parameters for the `EOS_Sessions_CreateSessionModification` function. */
public struct SwiftEOS_Sessions_CreateSessionModificationOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONS_CREATESESSIONMODIFICATION_API_LATEST`. */
    public let ApiVersion: Int32

    /** Name of the session to create */
    public let SessionName: String?

    /** Bucket ID associated with the session */
    public let BucketId: String?

    /** Maximum number of players allowed in the session */
    public let MaxPlayers: Int

    /** The Product User ID of the local user associated with the session */
    public let LocalUserId: EOS_ProductUserId?

    /**
    If true, this session will be associated with presence. Only one session at a time can have this flag true.
    This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.

    - Note: The Social Overlay can handle only one of the following three options at a time:
            * using the bPresenceEnabled flags within the Sessions interface
            * using the bPresenceEnabled flags within the Lobby interface
            * using `EOS_PresenceModification_SetJoinInfo`
    - SeeAlso: `EOS_PresenceModification_SetJoinInfoOptions`
    - SeeAlso: `EOS_Lobby_CreateLobbyOptions`
    - SeeAlso: `EOS_Lobby_JoinLobbyOptions`
    - SeeAlso: `EOS_Sessions_JoinSessionOptions`
    */
    public let bPresenceEnabled: Bool

    /**
    Optional session id - set to a globally unique value to override the backend assignment
    If not specified the backend service will assign one to the session.  Do not mix and match.
    This value can be of size [`EOS_SESSIONMODIFICATION_MIN_SESSIONIDOVERRIDE_LENGTH`, `EOS_SESSIONMODIFICATION_MAX_SESSIONIDOVERRIDE_LENGTH`]
    */
    public let SessionId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CreateSessionModificationOptions {
        try _tagEOS_Sessions_CreateSessionModificationOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString),
            MaxPlayers: try safeNumericCast(exactly: MaxPlayers),
            LocalUserId: LocalUserId,
            bPresenceEnabled: eosBoolFromSwiftBool(bPresenceEnabled),
            SessionId: pointerManager.managedPointerToBuffer(copyingArray: SessionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CreateSessionModificationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.BucketId = String(cString: sdkObject.BucketId)
        self.MaxPlayers = try safeNumericCast(exactly: sdkObject.MaxPlayers)
        self.LocalUserId = sdkObject.LocalUserId
        self.bPresenceEnabled = try swiftBoolFromEosBool(sdkObject.bPresenceEnabled)
        self.SessionId = String(cString: sdkObject.SessionId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONS_CREATESESSIONMODIFICATION_API_LATEST`.
    - Parameter SessionName: Name of the session to create
    - Parameter BucketId: Bucket ID associated with the session
    - Parameter MaxPlayers: Maximum number of players allowed in the session
    - Parameter LocalUserId: The Product User ID of the local user associated with the session
    - Parameter bPresenceEnabled: If true, this session will be associated with presence. Only one session at a time can have this flag true.
    This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
    - Note: The Social Overlay can handle only one of the following three options at a time:
            * using the bPresenceEnabled flags within the Sessions interface
            * using the bPresenceEnabled flags within the Lobby interface
            * using `EOS_PresenceModification_SetJoinInfo`
    - SeeAlso: `EOS_PresenceModification_SetJoinInfoOptions`
    - SeeAlso: `EOS_Lobby_CreateLobbyOptions`
    - SeeAlso: `EOS_Lobby_JoinLobbyOptions`
    - SeeAlso: `EOS_Sessions_JoinSessionOptions`
    - Parameter SessionId: Optional session id - set to a globally unique value to override the backend assignment
    If not specified the backend service will assign one to the session.  Do not mix and match.
    This value can be of size [`EOS_SESSIONMODIFICATION_MIN_SESSIONIDOVERRIDE_LENGTH`, `EOS_SESSIONMODIFICATION_MAX_SESSIONIDOVERRIDE_LENGTH`]
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_CREATESESSIONMODIFICATION_API_LATEST,
        SessionName: String?,
        BucketId: String?,
        MaxPlayers: Int,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool,
        SessionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.BucketId = BucketId
        self.MaxPlayers = MaxPlayers
        self.LocalUserId = LocalUserId
        self.bPresenceEnabled = bPresenceEnabled
        self.SessionId = SessionId
    }
}
