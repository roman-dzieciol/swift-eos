import Foundation
import EOSSDK

/**
 * Contains information about a single external user info.
 * 
 * - see: release func: EOS_UserInfo_ExternalUserInfo_Release
 */
public struct SwiftEOS_UserInfo_ExternalUserInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_EXTERNALUSERINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The type of the external account  */
    public let AccountType: EOS_EExternalAccountType

    /** The ID of the external account. Can be null  */
    public let AccountId: String?

    /** The display name of the external account. Can be null  */
    public let DisplayName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_ExternalUserInfo {
        _tagEOS_UserInfo_ExternalUserInfo(
            ApiVersion: ApiVersion,
            AccountType: AccountType,
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString),
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_ExternalUserInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AccountType = sdkObject.AccountType
        self.AccountId = String(cString: sdkObject.AccountId)
        self.DisplayName = String(cString: sdkObject.DisplayName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_EXTERNALUSERINFO_API_LATEST,
        AccountType: EOS_EExternalAccountType,
        AccountId: String?,
        DisplayName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AccountType = AccountType
        self.AccountId = AccountId
        self.DisplayName = DisplayName
    }
}
