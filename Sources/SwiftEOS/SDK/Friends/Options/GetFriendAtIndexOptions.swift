import Foundation
import EOSSDK

/** Input parameters for the EOS_Friends_GetFriendAtIndex function. */
public struct SwiftEOS_Friends_GetFriendAtIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_GETFRIENDATINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user whose friend list is being queried  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Index into the friend list. This value must be between 0 and EOS_Friends_GetFriendsCount-1 inclusively.  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_GetFriendAtIndexOptions {
        try _tagEOS_Friends_GetFriendAtIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_GetFriendAtIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_FRIENDS_GETFRIENDATINDEX_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user whose friend list is being queried 
     * - Parameter Index:  Index into the friend list. This value must be between 0 and EOS_Friends_GetFriendsCount-1 inclusively. 
     */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_GETFRIENDATINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}
