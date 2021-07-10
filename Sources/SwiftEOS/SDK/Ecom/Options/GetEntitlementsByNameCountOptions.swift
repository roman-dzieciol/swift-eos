import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_GetEntitlementsByNameCount function. */
public struct SwiftEOS_Ecom_GetEntitlementsByNameCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETENTITLEMENTSBYNAMECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user for which to retrieve the entitlement count  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Name of the entitlement to count in the cache  */
    public let EntitlementName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetEntitlementsByNameCountOptions {
        _tagEOS_Ecom_GetEntitlementsByNameCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementName: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetEntitlementsByNameCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementName = String(cString: sdkObject.EntitlementName)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ECOM_GETENTITLEMENTSBYNAMECOUNT_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user for which to retrieve the entitlement count 
     * - Parameter EntitlementName:  Name of the entitlement to count in the cache 
     */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETENTITLEMENTSBYNAMECOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementName = EntitlementName
    }
}
