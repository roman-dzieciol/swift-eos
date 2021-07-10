import Foundation
import EOSSDK

/**
Contains information about a single entitlement associated with an account. Instances of this structure are
created by `EOS_Ecom_CopyEntitlementByIndex`, `EOS_Ecom_CopyEntitlementByNameAndIndex`, or `EOS_Ecom_CopyEntitlementById`.
They must be passed to `EOS_Ecom_Entitlement_Release`.

- Note: Release func: ```EOS_Ecom_Entitlement_Release```
*/
public struct SwiftEOS_Ecom_Entitlement: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_ENTITLEMENT_API_LATEST`. */
    public let ApiVersion: Int32

    /** Name of the entitlement */
    public let EntitlementName: String?

    /** ID of the entitlement owned by an account */
    public let EntitlementId: String?

    /** ID of the item associated with the offer which granted this entitlement */
    public let CatalogItemId: String?

    /**
    If queried using pagination then ServerIndex represents the index of the entitlement as it
    exists on the server.  If not queried using pagination then ServerIndex will be -1.
    */
    public let ServerIndex: Int

    /** If true then the catalog has this entitlement marked as redeemed */
    public let bRedeemed: Bool

    /** If not -1 then this is a POSIX timestamp that this entitlement will end */
    public let EndTimestamp: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_Entitlement {
        try _tagEOS_Ecom_Entitlement(
            ApiVersion: ApiVersion,
            EntitlementName: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementName?.utf8CString),
            EntitlementId: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementId?.utf8CString),
            CatalogItemId: pointerManager.managedMutablePointerToBuffer(copyingArray: CatalogItemId?.utf8CString),
            ServerIndex: try safeNumericCast(exactly: ServerIndex),
            bRedeemed: eosBoolFromSwiftBool(bRedeemed),
            EndTimestamp: try safeNumericCast(exactly: EndTimestamp)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_Entitlement?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.EntitlementName = String(cString: sdkObject.EntitlementName)
        self.EntitlementId = String(cString: sdkObject.EntitlementId)
        self.CatalogItemId = String(cString: sdkObject.CatalogItemId)
        self.ServerIndex = try safeNumericCast(exactly: sdkObject.ServerIndex)
        self.bRedeemed = try swiftBoolFromEosBool(sdkObject.bRedeemed)
        self.EndTimestamp = try safeNumericCast(exactly: sdkObject.EndTimestamp)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_ENTITLEMENT_API_LATEST`.
    - Parameter EntitlementName: Name of the entitlement
    - Parameter EntitlementId: ID of the entitlement owned by an account
    - Parameter CatalogItemId: ID of the item associated with the offer which granted this entitlement
    - Parameter ServerIndex: If queried using pagination then ServerIndex represents the index of the entitlement as it
    exists on the server.  If not queried using pagination then ServerIndex will be -1.
    - Parameter bRedeemed: If true then the catalog has this entitlement marked as redeemed
    - Parameter EndTimestamp: If not -1 then this is a POSIX timestamp that this entitlement will end
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_ENTITLEMENT_API_LATEST,
        EntitlementName: String?,
        EntitlementId: String?,
        CatalogItemId: String?,
        ServerIndex: Int,
        bRedeemed: Bool,
        EndTimestamp: Int
    ) {
        self.ApiVersion = ApiVersion
        self.EntitlementName = EntitlementName
        self.EntitlementId = EntitlementId
        self.CatalogItemId = CatalogItemId
        self.ServerIndex = ServerIndex
        self.bRedeemed = bRedeemed
        self.EndTimestamp = EndTimestamp
    }
}
