import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_DestroyLobby function. */
public struct SwiftEOS_Lobby_DestroyLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_DESTROYLOBBY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user requesting destruction of the lobby; this user must currently own the lobby  */
    public let LocalUserId: EOS_ProductUserId?

    /** The ID of the lobby to destroy  */
    public let LobbyId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_DestroyLobbyOptions {
        _tagEOS_Lobby_DestroyLobbyOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_DestroyLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LOBBY_DESTROYLOBBY_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the local user requesting destruction of the lobby; this user must currently own the lobby 
     * - Parameter LobbyId:  The ID of the lobby to destroy 
     */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_DESTROYLOBBY_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.LobbyId = LobbyId
    }
}
