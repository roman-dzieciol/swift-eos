import Foundation
import EOSSDK

/** Input parameters for the EOS_Friends_GetStatus function. */
public struct SwiftEOS_Friends_GetStatusOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_GETSTATUS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged in user  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user whose friendship status with the local user is being queried  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_GetStatusOptions {
        _tagEOS_Friends_GetStatusOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_GetStatusOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_FRIENDS_GETSTATUS_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local, logged in user 
     * - Parameter TargetUserId:  The Epic Online Services Account ID of the user whose friendship status with the local user is being queried 
     */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_GETSTATUS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
