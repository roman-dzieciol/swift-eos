import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_GetInviteCount function. */
public struct SwiftEOS_Sessions_GetInviteCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_GETINVITECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who has one or more invitations in the cache  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_GetInviteCountOptions {
        _tagEOS_Sessions_GetInviteCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_GetInviteCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONS_GETINVITECOUNT_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the local user who has one or more invitations in the cache 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_GETINVITECOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
