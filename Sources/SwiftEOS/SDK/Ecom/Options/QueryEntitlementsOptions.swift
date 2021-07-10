import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_QueryEntitlements function. */
public struct SwiftEOS_Ecom_QueryEntitlementsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_QUERYENTITLEMENTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose Entitlements you want to retrieve  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * An array of Entitlement Names that you want to check 
     * - array num: EntitlementNameCount
     */
    public let EntitlementNames: [String]?

    /**
     * The number of Entitlement Names included in the array, up to EOS_ECOM_QUERYENTITLEMENTS_MAX_ENTITLEMENT_IDS; use zero to request all Entitlements associated with the user's Epic Online Services account. 
     * - array buffer: EntitlementNames
     */
    public let EntitlementNameCount: Int

    /** If true, Entitlements that have been redeemed will be included in the results.  */
    public let bIncludeRedeemed: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_QueryEntitlementsOptions {
        try _tagEOS_Ecom_QueryEntitlementsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementNames: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: EntitlementNames?.map { 
                    $0.utf8CString }),
            EntitlementNameCount: try safeNumericCast(exactly: EntitlementNameCount),
            bIncludeRedeemed: eosBoolFromSwiftBool(bIncludeRedeemed)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryEntitlementsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementNames = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.EntitlementNames,
            count: sdkObject.EntitlementNameCount
        )
        self.EntitlementNameCount = try safeNumericCast(exactly: sdkObject.EntitlementNameCount)
        self.bIncludeRedeemed = try swiftBoolFromEosBool(sdkObject.bIncludeRedeemed)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ECOM_QUERYENTITLEMENTS_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user whose Entitlements you want to retrieve 
     * - Parameter EntitlementNames:  An array of Entitlement Names that you want to check 
     * - array num: EntitlementNameCount
     * - Parameter EntitlementNameCount:  The number of Entitlement Names included in the array, up to EOS_ECOM_QUERYENTITLEMENTS_MAX_ENTITLEMENT_IDS; use zero to request all Entitlements associated with the user's Epic Online Services account. 
     * - array buffer: EntitlementNames
     * - Parameter bIncludeRedeemed:  If true, Entitlements that have been redeemed will be included in the results. 
     */
    public init(
        ApiVersion: Int32 = EOS_ECOM_QUERYENTITLEMENTS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementNames: [String]?,
        EntitlementNameCount: Int,
        bIncludeRedeemed: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementNames = EntitlementNames
        self.EntitlementNameCount = EntitlementNameCount
        self.bIncludeRedeemed = bIncludeRedeemed
    }
}
