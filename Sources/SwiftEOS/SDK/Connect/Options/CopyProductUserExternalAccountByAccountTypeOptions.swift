import Foundation
import EOSSDK

/** Input parameters for the `EOS_Connect_CopyProductUserExternalAccountByAccountType` function. */
public struct SwiftEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTTYPE_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID to look for when copying external account info from the cache. */
    public let TargetUserId: EOS_ProductUserId?

    /** External auth service account type to look for when copying external account info from the cache. */
    public let AccountIdType: EOS_EExternalAccountType

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions {
        _tagEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AccountIdType: AccountIdType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AccountIdType = sdkObject.AccountIdType
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTTYPE_API_LATEST`.
    - Parameter TargetUserId: The Product User ID to look for when copying external account info from the cache.
    - Parameter AccountIdType: External auth service account type to look for when copying external account info from the cache.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTTYPE_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AccountIdType = AccountIdType
    }
}
