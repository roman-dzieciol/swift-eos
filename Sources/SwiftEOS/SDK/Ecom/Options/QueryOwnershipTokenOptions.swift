import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_QueryOwnershipToken function. */
public struct SwiftEOS_Ecom_QueryOwnershipTokenOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_QUERYOWNERSHIPTOKEN_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose ownership token you want to query  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The array of Catalog Item IDs to check for ownership, matching in number to the CatalogItemIdCount  */
    public let CatalogItemIds: [String]?

    /** The number of catalog item IDs to query  */
    public let CatalogItemIdCount: Int

    /** Optional product namespace, if not the one specified during initialization  */
    public let CatalogNamespace: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_QueryOwnershipTokenOptions {
        try _tagEOS_Ecom_QueryOwnershipTokenOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            CatalogItemIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: CatalogItemIds?.map { 
                    $0.utf8CString }),
            CatalogItemIdCount: try safeNumericCast(exactly: CatalogItemIdCount),
            CatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: CatalogNamespace?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOwnershipTokenOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.CatalogItemIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.CatalogItemIds,
            count: sdkObject.CatalogItemIdCount
        )
        self.CatalogItemIdCount = try safeNumericCast(exactly: sdkObject.CatalogItemIdCount)
        self.CatalogNamespace = String(cString: sdkObject.CatalogNamespace)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ECOM_QUERYOWNERSHIPTOKEN_API_LATEST. 
     * - Parameter LocalUserId:  The Epic Online Services Account ID of the local user whose ownership token you want to query 
     * - Parameter CatalogItemIds:  The array of Catalog Item IDs to check for ownership, matching in number to the CatalogItemIdCount 
     * - Parameter CatalogItemIdCount:  The number of catalog item IDs to query 
     * - Parameter CatalogNamespace:  Optional product namespace, if not the one specified during initialization 
     */
    public init(
        ApiVersion: Int32 = EOS_ECOM_QUERYOWNERSHIPTOKEN_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        CatalogItemIds: [String]?,
        CatalogItemIdCount: Int,
        CatalogNamespace: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.CatalogItemIds = CatalogItemIds
        self.CatalogItemIdCount = CatalogItemIdCount
        self.CatalogNamespace = CatalogNamespace
    }
}
