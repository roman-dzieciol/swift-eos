import Foundation
import EOSSDK

/** Input parameters for the `EOS_Lobby_KickMember` function. */
public struct SwiftEOS_Lobby_KickMemberOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_KICKMEMBER_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID of the lobby */
    public let LobbyId: String?

    /** The Product User ID of the local user requesting the removal; this user must be the lobby owner */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the lobby member to remove */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_KickMemberOptions {
        _tagEOS_Lobby_KickMemberOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_KickMemberOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = stringFromOptionalCStringPointer(sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_KICKMEMBER_API_LATEST`.
    - Parameter LobbyId: The ID of the lobby
    - Parameter LocalUserId: The Product User ID of the local user requesting the removal; this user must be the lobby owner
    - Parameter TargetUserId: The Product User ID of the lobby member to remove
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_KICKMEMBER_API_LATEST,
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
