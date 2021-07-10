import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_RedeemEntitlements function. */
public struct SwiftEOS_Ecom_RedeemEntitlementsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_REDEEMENTITLEMENTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user who is redeeming Entitlements  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * The array of Entitlements to redeem 
     * 
     * - Note: ``EOS/_tagEOS_Ecom_RedeemEntitlementsOptions/EntitlementIdCount``:
     * The number of Entitlements to redeem 
     */
    public let EntitlementIds: [String]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_RedeemEntitlementsOptions {
        try _tagEOS_Ecom_RedeemEntitlementsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementIdCount: try safeNumericCast(exactly: EntitlementIds?.count ?? .zero),
            EntitlementIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: EntitlementIds?.map { 
                    $0.utf8CString })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_RedeemEntitlementsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.EntitlementIds,
            count: sdkObject.EntitlementIdCount
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ECOM_REDEEMENTITLEMENTS_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the user who is redeeming Entitlements 
     * - Parameter EntitlementIds:  The array of Entitlements to redeem 
     * 
     * - Note: ``EOS/_tagEOS_Ecom_RedeemEntitlementsOptions/EntitlementIdCount``:
     * The number of Entitlements to redeem 
     */
    public init(
        ApiVersion: Int32 = EOS_ECOM_REDEEMENTITLEMENTS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementIds: [String]?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementIds = EntitlementIds
    }
}
