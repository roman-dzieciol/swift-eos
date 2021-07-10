import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_GetInviteIdByIndex function. */
public struct SwiftEOS_Sessions_GetInviteIdByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_GETINVITEIDBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who has an invitation in the cache  */
    public let LocalUserId: EOS_ProductUserId?

    /** Index of the invite ID to retrieve  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_GetInviteIdByIndexOptions {
        try _tagEOS_Sessions_GetInviteIdByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_GetInviteIdByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONS_GETINVITEIDBYINDEX_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the local user who has an invitation in the cache 
     * - Parameter Index:  Index of the invite ID to retrieve 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_GETINVITEIDBYINDEX_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}
