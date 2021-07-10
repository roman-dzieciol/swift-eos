import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyModification_SetPermissionLevel function. */
public struct SwiftEOS_LobbyModification_SetPermissionLevelOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_SETPERMISSIONLEVEL_API_LATEST.  */
    public let ApiVersion: Int32

    /** Permission level of the lobby  */
    public let PermissionLevel: EOS_ELobbyPermissionLevel

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_SetPermissionLevelOptions {
        _tagEOS_LobbyModification_SetPermissionLevelOptions(
            ApiVersion: ApiVersion,
            PermissionLevel: PermissionLevel
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_SetPermissionLevelOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PermissionLevel = sdkObject.PermissionLevel
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LOBBYMODIFICATION_SETPERMISSIONLEVEL_API_LATEST. 
     * - Parameter PermissionLevel:  Permission level of the lobby 
     */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_SETPERMISSIONLEVEL_API_LATEST,
        PermissionLevel: EOS_ELobbyPermissionLevel
    ) {
        self.ApiVersion = ApiVersion
        self.PermissionLevel = PermissionLevel
    }
}
