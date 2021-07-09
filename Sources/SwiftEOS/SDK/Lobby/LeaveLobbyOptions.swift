import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_LeaveLobby function. */
public struct SwiftEOS_Lobby_LeaveLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_LEAVELOBBY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user leaving the lobby  */
    public let LocalUserId: EOS_ProductUserId?

    /** The ID of the lobby  */
    public let LobbyId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_LeaveLobbyOptions {
        _tagEOS_Lobby_LeaveLobbyOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LeaveLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_LEAVELOBBY_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.LobbyId = LobbyId
    }
}
