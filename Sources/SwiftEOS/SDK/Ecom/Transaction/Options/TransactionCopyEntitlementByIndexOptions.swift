import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_Transaction_CopyEntitlementByIndex function. */
public struct SwiftEOS_Ecom_Transaction_CopyEntitlementByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_TRANSACTION_COPYENTITLEMENTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The index of the entitlement to get  */
    public let EntitlementIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_Transaction_CopyEntitlementByIndexOptions {
        try _tagEOS_Ecom_Transaction_CopyEntitlementByIndexOptions(
            ApiVersion: ApiVersion,
            EntitlementIndex: try safeNumericCast(exactly: EntitlementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_Transaction_CopyEntitlementByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.EntitlementIndex = try safeNumericCast(exactly: sdkObject.EntitlementIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_TRANSACTION_COPYENTITLEMENTBYINDEX_API_LATEST,
        EntitlementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.EntitlementIndex = EntitlementIndex
    }
}
