import Foundation
import EOSSDK

/** Input parameters for the EOS_UserInfo_CopyExternalUserInfoByAccountId function. */
public struct SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved  */
    public let TargetUserId: EOS_EpicAccountId?

    /** The external account ID associated with the (external) user info to retrieve from the cache; cannot be null  */
    public let AccountId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions {
        _tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId,
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.AccountId = String(cString: sdkObject.AccountId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTID_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        AccountId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.AccountId = AccountId
    }
}
