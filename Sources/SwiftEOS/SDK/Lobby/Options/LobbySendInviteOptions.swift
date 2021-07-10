import Foundation
import EOSSDK

/** Input parameters for the `EOS_Lobby_SendInvite` function. */
public struct SwiftEOS_Lobby_SendInviteOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_SENDINVITE_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID of the lobby associated with the invitation */
    public let LobbyId: String?

    /** The Product User ID of the local user sending the invitation */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user receiving the invitation */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_SendInviteOptions {
        _tagEOS_Lobby_SendInviteOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_SendInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_SENDINVITE_API_LATEST`.
    - Parameter LobbyId: The ID of the lobby associated with the invitation
    - Parameter LocalUserId: The Product User ID of the local user sending the invitation
    - Parameter TargetUserId: The Product User ID of the user receiving the invitation
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_SENDINVITE_API_LATEST,
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
