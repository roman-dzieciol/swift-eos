import Foundation
import EOSSDK

/** Input parameters for the `EOS_Lobby_UpdateLobbyModification` function. */
public struct SwiftEOS_Lobby_UpdateLobbyModificationOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_UPDATELOBBYMODIFICATION_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID of the local user making modifications. Must be the owner to modify lobby data, but any lobby member can modify their own attributes. */
    public let LocalUserId: EOS_ProductUserId?

    /** The ID of the lobby */
    public let LobbyId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_UpdateLobbyModificationOptions {
        _tagEOS_Lobby_UpdateLobbyModificationOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_UpdateLobbyModificationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.LobbyId = stringFromOptionalCStringPointer(sdkObject.LobbyId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_UPDATELOBBYMODIFICATION_API_LATEST`.
    - Parameter LocalUserId: The ID of the local user making modifications. Must be the owner to modify lobby data, but any lobby member can modify their own attributes.
    - Parameter LobbyId: The ID of the lobby
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_UPDATELOBBYMODIFICATION_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.LobbyId = LobbyId
    }
}
