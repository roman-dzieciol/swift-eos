import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_UpdateLobby function. */
public struct SwiftEOS_Lobby_UpdateLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_UPDATELOBBY_API_LATEST. */
    public let ApiVersion: Int32

    /** Builder handle */
    public let LobbyModificationHandle: EOS_HLobbyModification?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_UpdateLobbyOptions {
        _tagEOS_Lobby_UpdateLobbyOptions(
            ApiVersion: ApiVersion,
            LobbyModificationHandle: LobbyModificationHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_UpdateLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyModificationHandle = sdkObject.LobbyModificationHandle
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LOBBY_UPDATELOBBY_API_LATEST.
    - Parameter LobbyModificationHandle: Builder handle
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_UPDATELOBBY_API_LATEST,
        LobbyModificationHandle: EOS_HLobbyModification?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyModificationHandle = LobbyModificationHandle
    }
}
