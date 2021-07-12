import Foundation
import EOSSDK

/** Input parameters for the `EOS_UserInfo_QueryUserInfoByExternalAccount` function. */
public struct SwiftEOS_UserInfo_QueryUserInfoByExternalAccountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_USERINFO_QUERYUSERINFOBYEXTERNALACCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information */
    public let LocalUserId: EOS_EpicAccountId?

    /** External account ID of the user whose information is being retrieved */
    public let ExternalAccountId: String?

    /** Account type of the external user info to query */
    public let AccountType: EOS_EExternalAccountType

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions {
        _tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ExternalAccountId: pointerManager.managedPointerToBuffer(copyingArray: ExternalAccountId?.utf8CString),
            AccountType: AccountType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ExternalAccountId = stringFromOptionalCStringPointer(sdkObject.ExternalAccountId)
        self.AccountType = sdkObject.AccountType
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_USERINFO_QUERYUSERINFOBYEXTERNALACCOUNT_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter ExternalAccountId: External account ID of the user whose information is being retrieved
    - Parameter AccountType: Account type of the external user info to query
    */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_QUERYUSERINFOBYEXTERNALACCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        ExternalAccountId: String?,
        AccountType: EOS_EExternalAccountType
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ExternalAccountId = ExternalAccountId
        self.AccountType = AccountType
    }
}
