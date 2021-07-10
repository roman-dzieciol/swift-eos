import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_AddNotifyRTCRoomConnectionChanged function. */
public struct SwiftEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ADDNOTIFYRTCROOMCONNECTIONCHANGED_API_LATEST */
    public let ApiVersion: Int32

    /** The ID of the lobby to receive RTC Room connection change notifications for */
    public let LobbyId: String?

    /** The Product User ID of the local user in the lobby */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptions {
        _tagEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LOBBY_ADDNOTIFYRTCROOMCONNECTIONCHANGED_API_LATEST
    - Parameter LobbyId: The ID of the lobby to receive RTC Room connection change notifications for
    - Parameter LocalUserId: The Product User ID of the local user in the lobby
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ADDNOTIFYRTCROOMCONNECTIONCHANGED_API_LATEST,
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
    }
}
