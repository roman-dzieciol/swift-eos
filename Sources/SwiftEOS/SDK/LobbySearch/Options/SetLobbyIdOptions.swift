import Foundation
import EOSSDK

/** Input parameters for the `EOS_LobbySearch_SetLobbyId` function. */
public struct SwiftEOS_LobbySearch_SetLobbyIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST`. */
    public let ApiVersion: Int32

    /** The ID of the lobby to find */
    public let LobbyId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_SetLobbyIdOptions {
        _tagEOS_LobbySearch_SetLobbyIdOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_SetLobbyIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST`.
    - Parameter LobbyId: The ID of the lobby to find
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
    }
}
