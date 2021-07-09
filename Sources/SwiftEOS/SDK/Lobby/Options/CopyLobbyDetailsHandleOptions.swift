import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_CopyLobbyDetailsHandle function. */
public struct SwiftEOS_Lobby_CopyLobbyDetailsHandleOptions {

    /** API Version: Set this to EOS_LOBBY_COPYLOBBYDETAILSHANDLE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the lobby  */
    public var LobbyId: String?

    /** The Product User ID of the local user making the request  */
    public let LocalUserId: EOS_ProductUserId?

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_COPYLOBBYDETAILSHANDLE_API_LATEST,
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
    }
}
