import Foundation
import EOSSDK

/** Data for the EOS_PresenceModification_SetJoinInfo function. */
public struct SwiftEOS_PresenceModification_SetJoinInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PRESENCEMODIFICATION_SETJOININFO_API_LATEST. */
    public let ApiVersion: Int32

    /**
    The string which will be advertised as this player's join info.
    An application is expected to freely define the meaning of this string to use for connecting to an active game session.
    The string should not exceed EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH in length.
    This affects the ability of the Social Overlay to show game related actions to take in the player's social graph.

    - Note: The Social Overlay can handle only one of the following three options at a time:
            * using the bPresenceEnabled flags within the Sessions interface
            * using the bPresenceEnabled flags within the Lobby interface
            * using EOS_PresenceModification_SetJoinInfo
    - SeeAlso: EOS_Lobby_CreateLobbyOptions
    - SeeAlso: EOS_Lobby_JoinLobbyOptions
    - SeeAlso: EOS_Sessions_CreateSessionModificationOptions
    - SeeAlso: EOS_Sessions_JoinSessionOptions
    */
    public let JoinInfo: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PresenceModification_SetJoinInfoOptions {
        _tagEOS_PresenceModification_SetJoinInfoOptions(
            ApiVersion: ApiVersion,
            JoinInfo: pointerManager.managedPointerToBuffer(copyingArray: JoinInfo?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PresenceModification_SetJoinInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.JoinInfo = String(cString: sdkObject.JoinInfo)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_PRESENCEMODIFICATION_SETJOININFO_API_LATEST.
    - Parameter JoinInfo: The string which will be advertised as this player's join info.
    An application is expected to freely define the meaning of this string to use for connecting to an active game session.
    The string should not exceed EOS_PRESENCEMODIFICATION_JOININFO_MAX_LENGTH in length.
    This affects the ability of the Social Overlay to show game related actions to take in the player's social graph.
    - Note: The Social Overlay can handle only one of the following three options at a time:
            * using the bPresenceEnabled flags within the Sessions interface
            * using the bPresenceEnabled flags within the Lobby interface
            * using EOS_PresenceModification_SetJoinInfo
    - SeeAlso: EOS_Lobby_CreateLobbyOptions
    - SeeAlso: EOS_Lobby_JoinLobbyOptions
    - SeeAlso: EOS_Sessions_CreateSessionModificationOptions
    - SeeAlso: EOS_Sessions_JoinSessionOptions
    */
    public init(
        ApiVersion: Int32 = EOS_PRESENCEMODIFICATION_SETJOININFO_API_LATEST,
        JoinInfo: String?
    ) {
        self.ApiVersion = ApiVersion
        self.JoinInfo = JoinInfo
    }
}
