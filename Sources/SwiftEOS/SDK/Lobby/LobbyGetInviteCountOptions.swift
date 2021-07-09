import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_GetInviteCount function. */
public struct SwiftEOS_Lobby_GetInviteCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_GETINVITECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user whose cached lobby invitations you want to count  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_GetInviteCountOptions {
        _tagEOS_Lobby_GetInviteCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_GetInviteCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_GETINVITECOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
