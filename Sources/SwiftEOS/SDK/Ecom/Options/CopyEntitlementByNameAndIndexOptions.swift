import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_CopyEntitlementByNameAndIndex function. */
public struct SwiftEOS_Ecom_CopyEntitlementByNameAndIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose entitlement is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Name of the entitlement to retrieve from the cache  */
    public let EntitlementName: String?

    /** Index of the entitlement within the named set to retrieve from the cache.  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyEntitlementByNameAndIndexOptions {
        try _tagEOS_Ecom_CopyEntitlementByNameAndIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementName: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementName?.utf8CString),
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyEntitlementByNameAndIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementName = String(cString: sdkObject.EntitlementName)
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user whose entitlement is being copied 
     * - Parameter EntitlementName:  Name of the entitlement to retrieve from the cache 
     * - Parameter Index:  Index of the entitlement within the named set to retrieve from the cache. 
     */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementName: String?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementName = EntitlementName
        self.Index = Index
    }
}
