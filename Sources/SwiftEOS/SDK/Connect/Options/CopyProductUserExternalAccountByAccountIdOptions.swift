import Foundation
import EOSSDK

/** Input parameters for the EOS_Connect_CopyProductUserExternalAccountByAccountId function. */
public struct SwiftEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTID_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID to look for when copying external account info from the cache. */
    public let TargetUserId: EOS_ProductUserId?

    /** External auth service account ID to look for when copying external account info from the cache. */
    public let AccountId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions {
        _tagEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AccountId = String(cString: sdkObject.AccountId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTID_API_LATEST.
    - Parameter TargetUserId: The Product User ID to look for when copying external account info from the cache.
    - Parameter AccountId: External auth service account ID to look for when copying external account info from the cache.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTID_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AccountId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AccountId = AccountId
    }
}
