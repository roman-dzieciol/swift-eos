import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_GetRTCRoomName function. */
public struct SwiftEOS_Lobby_GetRTCRoomNameOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_GETRTCROOMNAME_API_LATEST  */
    public let ApiVersion: Int32

    /** The ID of the lobby to get the RTC Room name for  */
    public let LobbyId: String?

    /** The Product User ID of the local user in the lobby  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_GetRTCRoomNameOptions {
        _tagEOS_Lobby_GetRTCRoomNameOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_GetRTCRoomNameOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_GETRTCROOMNAME_API_LATEST,
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
    }
}
