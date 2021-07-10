import Foundation
import EOSSDK

/** Input parameters for the EOS_Friends_GetFriendsCount function. */
public struct SwiftEOS_Friends_GetFriendsCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_GETFRIENDSCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user whose friends should be counted  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_GetFriendsCountOptions {
        _tagEOS_Friends_GetFriendsCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_GetFriendsCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_FRIENDS_GETFRIENDSCOUNT_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user whose friends should be counted 
     */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_GETFRIENDSCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
