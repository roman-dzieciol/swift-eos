import Foundation
import EOSSDK

/** Input parameters for the EOS_UserInfo_QueryUserInfo function. */
public struct SwiftEOS_UserInfo_QueryUserInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_QUERYUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_QueryUserInfoOptions {
        _tagEOS_UserInfo_QueryUserInfoOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_USERINFO_QUERYUSERINFO_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local player requesting the information 
     * - Parameter TargetUserId:  The Epic Online Services Account ID of the player whose information is being retrieved 
     */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_QUERYUSERINFO_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
