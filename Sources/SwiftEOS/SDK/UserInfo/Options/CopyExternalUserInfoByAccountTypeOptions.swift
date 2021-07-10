import Foundation
import EOSSDK

/** Input parameters for the EOS_UserInfo_CopyExternalUserInfoByAccountType function. */
public struct SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTTYPE_API_LATEST. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved */
    public let TargetUserId: EOS_EpicAccountId?

    /** Account type of the external user info to retrieve from the cache */
    public let AccountType: EOS_EExternalAccountType

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions {
        _tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId,
            AccountType: AccountType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.AccountType = sdkObject.AccountType
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTTYPE_API_LATEST.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter TargetUserId: The Epic Online Services Account ID of the player whose information is being retrieved
    - Parameter AccountType: Account type of the external user info to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTTYPE_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        AccountType: EOS_EExternalAccountType
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.AccountType = AccountType
    }
}
