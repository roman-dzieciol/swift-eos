import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_CopyEntitlementById function. */
public struct SwiftEOS_Ecom_CopyEntitlementByIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYENTITLEMENTBYID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose entitlement is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** ID of the entitlement to retrieve from the cache  */
    public let EntitlementId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyEntitlementByIdOptions {
        _tagEOS_Ecom_CopyEntitlementByIdOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementId: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyEntitlementByIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementId = String(cString: sdkObject.EntitlementId)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ECOM_COPYENTITLEMENTBYID_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user whose entitlement is being copied 
     * - Parameter EntitlementId:  ID of the entitlement to retrieve from the cache 
     */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYENTITLEMENTBYID_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementId = EntitlementId
    }
}
