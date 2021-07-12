import Foundation
import EOSSDK

/**
Contains information about an external account info

- Note: Release func: ``EOS_Connect_ExternalAccountInfo_Release``
*/
public struct SwiftEOS_Connect_ExternalAccountInfo: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_EXTERNALACCOUNTINFO_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the target user. */
    public let ProductUserId: EOS_ProductUserId?

    /** Display name, can be null if not set. */
    public let DisplayName: String?

    /** External account ID. */
    public let AccountId: String?

    /** The identity provider that owns the external account. */
    public let AccountIdType: EOS_EExternalAccountType

    /** The POSIX timestamp for the time the user last logged in, or `EOS_CONNECT_TIME_UNDEFINED`. */
    public let LastLoginTime: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_ExternalAccountInfo {
        try _tagEOS_Connect_ExternalAccountInfo(
            ApiVersion: ApiVersion,
            ProductUserId: ProductUserId,
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString),
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString),
            AccountIdType: AccountIdType,
            LastLoginTime: try safeNumericCast(exactly: LastLoginTime)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_ExternalAccountInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ProductUserId = sdkObject.ProductUserId
        self.DisplayName = stringFromOptionalCStringPointer(sdkObject.DisplayName)
        self.AccountId = stringFromOptionalCStringPointer(sdkObject.AccountId)
        self.AccountIdType = sdkObject.AccountIdType
        self.LastLoginTime = try safeNumericCast(exactly: sdkObject.LastLoginTime)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_EXTERNALACCOUNTINFO_API_LATEST`.
    - Parameter ProductUserId: The Product User ID of the target user.
    - Parameter DisplayName: Display name, can be null if not set.
    - Parameter AccountId: External account ID.
    - Parameter AccountIdType: The identity provider that owns the external account.
    - Parameter LastLoginTime: The POSIX timestamp for the time the user last logged in, or `EOS_CONNECT_TIME_UNDEFINED`.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_EXTERNALACCOUNTINFO_API_LATEST,
        ProductUserId: EOS_ProductUserId?,
        DisplayName: String?,
        AccountId: String?,
        AccountIdType: EOS_EExternalAccountType,
        LastLoginTime: Int
    ) {
        self.ApiVersion = ApiVersion
        self.ProductUserId = ProductUserId
        self.DisplayName = DisplayName
        self.AccountId = AccountId
        self.AccountIdType = AccountIdType
        self.LastLoginTime = LastLoginTime
    }
}
