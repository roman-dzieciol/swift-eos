import Foundation
import EOSSDK


/** Input parameters for the `EOS_Connect_GetExternalAccountMapping` function. */
public struct SwiftEOS_Connect_GetExternalAccountMappingsOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_GETEXTERNALACCOUNTMAPPING_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the existing, logged-in user who is querying account mappings. */
    public let LocalUserId: EOS_ProductUserId?

    /** External auth service supplying the account IDs in string form. */
    public let AccountIdType: EOS_EExternalAccountType

    /** Target user to retrieve the mapping for, as an external account ID. */
    public let TargetExternalUserId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_GetExternalAccountMappingsOptions {
        _tagEOS_Connect_GetExternalAccountMappingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            AccountIdType: AccountIdType,
            TargetExternalUserId: pointerManager.managedPointerToBuffer(copyingArray: TargetExternalUserId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_GetExternalAccountMappingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.AccountIdType = sdkObject.AccountIdType
        self.TargetExternalUserId = stringFromOptionalCStringPointer(sdkObject.TargetExternalUserId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_GETEXTERNALACCOUNTMAPPING_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the existing, logged-in user who is querying account mappings.
    - Parameter AccountIdType: External auth service supplying the account IDs in string form.
    - Parameter TargetExternalUserId: Target user to retrieve the mapping for, as an external account ID.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_GETEXTERNALACCOUNTMAPPING_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        AccountIdType: EOS_EExternalAccountType,
        TargetExternalUserId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.AccountIdType = AccountIdType
        self.TargetExternalUserId = TargetExternalUserId
    }
}
