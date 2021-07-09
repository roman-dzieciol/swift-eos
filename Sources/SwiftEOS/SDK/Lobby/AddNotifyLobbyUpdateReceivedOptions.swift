import Foundation
import EOSSDK
public struct SwiftEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ADDNOTIFYLOBBYUPDATERECEIVED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions {
        _tagEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ADDNOTIFYLOBBYUPDATERECEIVED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
