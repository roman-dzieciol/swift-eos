import Foundation
import EOSSDK

/** Input parameters for the EOS_Friends_RejectInvite function. */
public struct SwiftEOS_Friends_RejectInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_FRIENDS_REJECTINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local, logged-in user who is rejecting a friends list invitation  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the user who sent the friends list invitation  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Friends_RejectInviteOptions {
        _tagEOS_Friends_RejectInviteOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Friends_RejectInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_FRIENDS_REJECTINVITE_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local, logged-in user who is rejecting a friends list invitation 
     * - Parameter TargetUserId:  The Epic Online Services Account ID of the user who sent the friends list invitation 
     */
    public init(
        ApiVersion: Int32 = EOS_FRIENDS_REJECTINVITE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
